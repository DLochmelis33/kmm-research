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
  %8 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %10 = bitcast [4 x %struct.ObjHeader*]* %5 to %struct.FrameOverlay.6*
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
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
  %25 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %24, align 8, !tbaa !3
  %26 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %25, i64 0, i32 2, i32 1
  %27 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %26, i64 48) #37
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
  %34 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %35 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %36 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %37 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %38 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %39 = bitcast [9 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %40 = bitcast %"class.kotlin::mm::ShadowStack"* %38 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !7
  %42 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %43 = bitcast %struct.ObjHeader** %42 to i64*
  store i64 %41, i64* %43, align 8, !tbaa !9
  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %38 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %44, align 8, !tbaa !7
  %45 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %46 = bitcast %struct.ObjHeader** %45 to i32*
  store i32 0, i32* %46, align 8, !tbaa !12
  %47 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %39, i64 0, i32 3
  store i32 9, i32* %47, align 4, !tbaa !13
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 6
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i32*
  store i32 20, i32* %49, align 8
  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29 to %"kclassbody:MultithreadedLoopsBenchmark#internal"*
  %51 = getelementptr inbounds %"kclassbody:MultithreadedLoopsBenchmark#internal", %"kclassbody:MultithreadedLoopsBenchmark#internal"* %50, i64 0, i32 5
  store i32 10000, i32* %51, align 4
  %52 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %53 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %54 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %53 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %55 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %54, align 8, !tbaa !3
  %56 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %55, i64 0, i32 2, i32 1
  %57 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %56, i64 20024) #37
  %58 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 1
  %59 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 2
  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.TypeInfo**
  %61 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %60, align 8, !tbaa !16
  %62 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 3
  %63 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %62 to i32*
  store i32 10000, i32* %63, align 8, !tbaa !18
  %64 = bitcast %struct.ObjHeader** %52 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %64, align 8, !tbaa !3
  %65 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to i64*
  %66 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, i64 4
  %67 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %66 to i16*
  br label %loop_check.i7

while_loop.i4:                                    ; preds = %loop_check.i7
  %68 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %Kotlin_mm_safePointWhileLoopBody.exit.i5, label %71

71:                                               ; preds = %while_loop.i4
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i5

Kotlin_mm_safePointWhileLoopBody.exit.i5:         ; preds = %71, %while_loop.i4
  %72 = load i32, i32* %63, align 8, !tbaa !18
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %indvars.iv57, %73
  br i1 %74, label %Kotlin_CharArray_set.exit.i, label %75

75:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i5
  %76 = trunc i32 %tmp.0.i6 to i16
  %77 = load atomic volatile i64, i64* %65 monotonic, align 8
  %78 = getelementptr inbounds i16, i16* %67, i64 %indvars.iv57
  store i16 %76, i16* %78, align 2, !tbaa !34
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %79 = add nuw nsw i32 %tmp.0.i6, 1
  br label %loop_check.i7

loop_check.i7:                                    ; preds = %Kotlin_CharArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %tmp.0.i6 = phi i32 [ %79, %Kotlin_CharArray_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %exitcond59.not = icmp eq i64 %indvars.iv57, 10000
  br i1 %exitcond59.not, label %loop_exit.i8, label %while_loop.i4

loop_exit.i8:                                     ; preds = %loop_check.i7
  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %80, align 8, !tbaa !3
  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %59 to %struct.ObjHeader*
  %82 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* nonnull %81, %struct.ObjHeader** nonnull %34)
  store %struct.ObjHeader* %82, %struct.ObjHeader** %34, align 8, !tbaa !3
  %83 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 4
  %84 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %83 to %struct.ObjHeader**
  store %struct.ObjHeader* %82, %struct.ObjHeader** %84, align 8, !tbaa !3
  %85 = load i32, i32* %49, align 8
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %when_case.i9, label %AllocArrayInstance.exit1.i

when_case.i9:                                     ; preds = %loop_exit.i8
  %87 = getelementptr inbounds [9 x %struct.ObjHeader*], [9 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %88 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %89 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %88 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %90 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %89, align 8, !tbaa !3
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
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %95, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %95) #50
  unreachable

AllocArrayInstance.exit1.i:                       ; preds = %loop_exit.i8
  %99 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %100 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %99 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %101 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %100, align 8, !tbaa !3
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
  %114 = bitcast %struct.ObjHeader** %35 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %114, align 8, !tbaa !3
  %115 = bitcast %struct.ObjHeader** %36 to i64*
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
  %125 = bitcast %struct.ObjHeader** %37 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %126 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109 to i64*
  %127 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %107, i64 4
  %wide.trip.count55 = zext i32 %85 to i64
  br label %loop_check15.i

while_loop16.i:                                   ; preds = %loop_check15.i
  %128 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %Kotlin_mm_safePointWhileLoopBody.exit2.i, label %131

131:                                              ; preds = %while_loop16.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit2.i

Kotlin_mm_safePointWhileLoopBody.exit2.i:         ; preds = %131, %while_loop16.i
  %132 = load i64, i64* bitcast (%struct.ObjHeader** @"kvar:kotlin.native.concurrent.Worker.$companion#internal" to i64*), align 8
  store i64 %132, i64* %115, align 8, !tbaa !3
  %133 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  %134 = call fastcc %class.Worker* @_ZN12_GLOBAL__N_15State17addWorkerUnlockedENS_23WorkerExceptionHandlingEP9ObjHeaderNS_10WorkerKindE(%"class.(anonymous namespace)::State"* %133, i32 0)
  %135 = icmp eq %class.Worker* %134, null
  br i1 %135, label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i", label %136

136:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit2.i
  %137 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
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
  %157 = load i32, i32* %156, align 8, !tbaa !92
  br label %"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i"

"kfun:kotlin.native.concurrent.Worker.Companion#start$default(kotlin.Boolean;kotlin.String?;kotlin.Int){}kotlin.native.concurrent.Worker.exit.i": ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11, %Kotlin_mm_safePointWhileLoopBody.exit2.i
  %158 = phi i32 [ %157, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit.i.i.i.i11 ], [ -1, %Kotlin_mm_safePointWhileLoopBody.exit2.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %159 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %160 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !7
  store i64 %161, i64* %120, align 8, !tbaa !9
  %162 = bitcast %"class.kotlin::mm::ShadowStack"* %159 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %162, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %163 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %164 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %163 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %165 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %164, align 8, !tbaa !3
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
  %175 = load i64, i64* %120, align 8, !tbaa !9
  %176 = bitcast %"class.kotlin::mm::ShadowStack"* %174 to i64*
  store i64 %175, i64* %176, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %177 = load i32, i32* %113, align 8, !tbaa !18
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
  br label %loop_check15.i

loop_check15.i:                                   ; preds = %Kotlin_Array_set.exit.i13, %AllocArrayInstance.exit1.i
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %Kotlin_Array_set.exit.i13 ], [ 0, %AllocArrayInstance.exit1.i ]
  %exitcond56.not = icmp eq i64 %indvars.iv53, %wide.trip.count55
  br i1 %exitcond56.not, label %call_success, label %while_loop16.i

call_success:                                     ; preds = %loop_check15.i
  %184 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %109, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %184, align 8, !tbaa !3
  %185 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %186 = load i64, i64* %43, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %33)
  %187 = bitcast [17 x %struct.ObjHeader*]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 136, i8* nonnull %187)
  %.sub.i = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(136) %187, i8 0, i32 136, i1 immarg false) #49
  %188 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 5
  %189 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 6
  %190 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 9
  %191 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 10
  %192 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 11
  %193 = bitcast [17 x %struct.ObjHeader*]* %4 to %struct.FrameOverlay.6*
  %194 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 1
  %195 = bitcast %struct.ObjHeader** %194 to i64*
  store i64 %186, i64* %195, align 8, !tbaa !9
  %196 = bitcast %"class.kotlin::mm::ShadowStack"* %185 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %196, align 8, !tbaa !7
  %197 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 2
  %198 = bitcast %struct.ObjHeader** %197 to i32*
  store i32 0, i32* %198, align 8, !tbaa !12
  %199 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %193, i64 0, i32 3
  store i32 17, i32* %199, align 4, !tbaa !13
  %200 = load i32, i32* %49, align 8
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %when_case.i, label %AllocArrayInstance.exit.i

when_case.i:                                      ; preds = %call_success
  %202 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 3
  %203 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %204 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %203 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %205 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %204, align 8, !tbaa !3
  %206 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %205, i64 0, i32 2, i32 1
  %207 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %206, i64 56) #37
  %208 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, i64 1
  %209 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %207, i64 2
  %210 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to %struct.ObjHeader*
  %211 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209 to %struct.TypeInfo**
  %212 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %208 to i64*
  store i64 0, i64* %212, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalArgumentException#internal", i64 0, i32 0), %struct.TypeInfo** %211, align 8, !tbaa !14
  %213 = bitcast %struct.ObjHeader** %202 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %209, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %213, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %210, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [30 x i16] }* @115 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %210) #50
  unreachable

AllocArrayInstance.exit.i:                        ; preds = %call_success
  %214 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 8
  %215 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 7
  %216 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 4
  %217 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %218 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %217 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %219 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %218, align 8, !tbaa !3
  %220 = zext i32 %200 to i64
  %221 = shl nuw nsw i64 %220, 3
  %222 = add nuw nsw i64 %221, 31
  %223 = and i64 %222, 68719476728
  %224 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %219, i64 0, i32 2, i32 1
  %225 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %224, i64 %223) #37
  %226 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 1
  %227 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 2
  %228 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to %struct.TypeInfo**
  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %226 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %229, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %228, align 8, !tbaa !16
  %230 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 3
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %230 to i32*
  store i32 %200, i32* %231, align 8, !tbaa !18
  %232 = bitcast %struct.ObjHeader** %216 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %232, align 8, !tbaa !3
  %233 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %27, i64 5
  %234 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %233 to %struct.ObjHeader**
  %235 = bitcast %struct.ObjHeader** %215 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %236 = bitcast %class.ObjHolder* %3 to i8*
  %237 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 1
  %238 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 1
  %239 = bitcast %struct.FrameOverlay.6** %238 to i64*
  %240 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 2
  %241 = getelementptr inbounds %class.ObjHolder, %class.ObjHolder* %3, i64 0, i32 0, i32 3
  %242 = bitcast %"struct.(anonymous namespace)::Job"* %2 to i8*
  %243 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 0
  %244 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 0
  %245 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 1
  %246 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 2
  %247 = getelementptr inbounds %"struct.(anonymous namespace)::Job", %"struct.(anonymous namespace)::Job"* %2, i64 0, i32 1, i32 0, i32 3
  %248 = bitcast %struct.ObjHeader** %214 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  %249 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %227 to i64*
  %250 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, i64 4
  %wide.trip.count51 = zext i32 %200 to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %251 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %254

254:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %254, %while_loop.i
  %255 = load %struct.ObjHeader*, %struct.ObjHeader** %234, align 8
  %256 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %255, i64 1
  %257 = bitcast %struct.ObjHeader* %256 to i32*
  %258 = load i32, i32* %257, align 8, !tbaa !18
  %259 = zext i32 %258 to i64
  %260 = icmp ult i64 %indvars.iv49, %259
  br i1 %260, label %Kotlin_Array_get.exit.i, label %261

261:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_get.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %262 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %255, i64 2
  %263 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %262, i64 %indvars.iv49
  %264 = bitcast %struct.ObjHeader* %263 to %struct.ObjHeader**
  %265 = load %struct.ObjHeader*, %struct.ObjHeader** %264, align 8, !tbaa !3
  store %struct.ObjHeader* %265, %struct.ObjHeader** %188, align 8, !tbaa !3
  %266 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %265, i64 1
  %267 = bitcast %struct.ObjHeader* %266 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.TransferMode" acquire, align 4
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_Array_get.exit.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.TransferMode", void ()* nonnull @"kfun:kotlin.native.concurrent.TransferMode.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"

"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i": ; preds = %label_init.i.i, %Kotlin_Array_get.exit.i
  %271 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal", align 8
  %272 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %271, i64 2
  %273 = bitcast %struct.ObjHeader* %272 to %struct.ObjHeader**
  %274 = load %struct.ObjHeader*, %struct.ObjHeader** %273, align 8, !tbaa !3
  store %struct.ObjHeader* %274, %struct.ObjHeader** %189, align 8, !tbaa !3
  %275 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %276 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %275 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %277 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %276, align 8, !tbaa !3
  %278 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %277, i64 0, i32 2, i32 1
  %279 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %278, i64 24) #37
  %280 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 1
  %281 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 2
  %282 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281 to %struct.ObjHeader*
  %283 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281 to %struct.TypeInfo**
  %284 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %280 to i64*
  store i64 0, i64* %284, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:MultithreadedLoopsBenchmark.$runSumSharedStringWorkers$lambda$0$FUNCTION_REFERENCE$0#internal", i64 0, i32 0), %struct.TypeInfo** %283, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %281, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %235, align 8, !tbaa !3
  %285 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %279, i64 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %29, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %285, align 8, !tbaa !3
  %286 = bitcast %struct.ObjHeader* %274 to %"kclassbody:kotlin.native.concurrent.TransferMode#internal"*
  %287 = getelementptr inbounds %"kclassbody:kotlin.native.concurrent.TransferMode#internal", %"kclassbody:kotlin.native.concurrent.TransferMode#internal"* %286, i64 0, i32 3
  %288 = load i32, i32* %287, align 4
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %236) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %237, align 8, !tbaa !61
  %289 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %290 = bitcast %"class.kotlin::mm::ShadowStack"* %289 to i64*
  %291 = load i64, i64* %290, align 8, !tbaa !7
  store i64 %291, i64* %239, align 8, !tbaa !9
  %292 = bitcast %"class.kotlin::mm::ShadowStack"* %289 to %class.ObjHolder**
  store %class.ObjHolder* %3, %class.ObjHolder** %292, align 8, !tbaa !7
  store i32 0, i32* %240, align 8, !tbaa !12
  store i32 4, i32* %241, align 4, !tbaa !13
  invoke fastcc void @WorkerLaunchpad(%struct.ObjHeader* nonnull %282, %struct.ObjHeader** nonnull %237)
          to label %293 unwind label %577

293:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %294 = load %struct.ObjHeader*, %struct.ObjHeader** %237, align 8, !tbaa !61
  %295 = call fastcc i8* @CreateStablePointer(%struct.ObjHeader* %294) #37
  store %struct.ObjHeader* null, %struct.ObjHeader** %237, align 8, !tbaa !3
  %296 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv()
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %242)
  %297 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 0
  %298 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %299 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %298, i64 328
  %300 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %299 to i32*
  %301 = atomicrmw xchg i32* %300, i32 1 seq_cst, align 4
  %302 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %297) #37
  %303 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %298, null
  br i1 %303, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %304

304:                                              ; preds = %293
  %305 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %299 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %306 = atomicrmw xchg i32* %300, i32 %301 seq_cst, align 4
  %307 = icmp eq i32 %306, 1
  %308 = icmp eq i32 %301, 0
  %309 = and i1 %308, %307
  br i1 %309, label %310, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

310:                                              ; preds = %304
  %311 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %312 = and i8 %311, 1
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i, label %314

314:                                              ; preds = %310
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %305) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i: ; preds = %314, %310, %304, %293
  %315 = sext i32 %268 to i64
  %316 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 3, i32 0, i32 1
  %317 = load i64, i64* %316, align 8, !tbaa !67
  %318 = urem i64 %315, %317
  %319 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 3, i32 0, i32 0
  %320 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %319, align 8, !tbaa !72
  %321 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %320, i64 %318
  %322 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %321, align 8, !tbaa !3
  %323 = icmp eq %"struct.std::__detail::_Hash_node_base"* %322, null
  br i1 %323, label %.loopexit17, label %324

324:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %325 = bitcast %"struct.std::__detail::_Hash_node_base"* %322 to %"struct.std::__detail::_Hash_node.203"**
  %326 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %325, align 8, !tbaa !73
  %327 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %326, i64 0, i32 0, i32 1
  %328 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %327 to i32*
  %329 = load i32, i32* %328, align 4, !tbaa !74
  %330 = icmp eq i32 %329, %268
  br i1 %330, label %347, label %.preheader16

331:                                              ; preds = %338
  %332 = icmp eq i32 %341, %268
  br i1 %332, label %345, label %.preheader16

.preheader16:                                     ; preds = %331, %324
  %333 = phi %"struct.std::__detail::_Hash_node.203"* [ %337, %331 ], [ %326, %324 ]
  %334 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %333, i64 0, i32 0, i32 0, i32 0
  %335 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %334, align 8, !tbaa !73
  %336 = icmp eq %"struct.std::__detail::_Hash_node_base"* %335, null
  %337 = bitcast %"struct.std::__detail::_Hash_node_base"* %335 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %336, label %.loopexit17, label %338

338:                                              ; preds = %.preheader16
  %339 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %335, i64 1
  %340 = bitcast %"struct.std::__detail::_Hash_node_base"* %339 to i32*
  %341 = load i32, i32* %340, align 4, !tbaa !74
  %342 = sext i32 %341 to i64
  %343 = urem i64 %342, %317
  %344 = icmp eq i64 %343, %318
  br i1 %344, label %331, label %.loopexit17

345:                                              ; preds = %331
  %346 = icmp eq %"struct.std::__detail::_Hash_node.203"* %333, null
  br i1 %346, label %.loopexit17, label %349

347:                                              ; preds = %324
  %348 = icmp eq %"struct.std::__detail::_Hash_node.203"* %326, null
  br i1 %348, label %.loopexit17, label %349

349:                                              ; preds = %347, %345
  %350 = phi %"struct.std::__detail::_Hash_node.203"* [ %337, %345 ], [ %326, %347 ]
  %351 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %350, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %352 = bitcast i8* %351 to %class.Worker**
  %353 = load %class.Worker*, %class.Worker** %352, align 8, !tbaa !75
  %354 = call noalias dereferenceable_or_null(104) i8* @calloc(i64 1, i64 104) #37
  %355 = icmp eq i8* %354, null
  br i1 %355, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %356

356:                                              ; preds = %349
  %357 = bitcast i8* %354 to %"class.(anonymous namespace)::Future"*
  %358 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 6
  %359 = load i32, i32* %358, align 4, !tbaa !93
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 4, !tbaa !93
  %361 = bitcast i8* %354 to i32*
  store i32 1, i32* %361, align 8, !tbaa !100
  %362 = getelementptr inbounds i8, i8* %354, i64 4
  %363 = bitcast i8* %362 to i32*
  store i32 %359, i32* %363, align 4, !tbaa !102
  %364 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %365 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %364, i64 328
  %366 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %365 to i32*
  %367 = atomicrmw xchg i32* %366, i32 1 seq_cst, align 4
  %368 = getelementptr inbounds i8, i8* %354, i64 16
  %369 = bitcast i8* %368 to %union.pthread_mutex_t*
  %370 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* nonnull %369, %"struct.std::atomic"* null) #37
  %371 = getelementptr inbounds i8, i8* %354, i64 56
  %372 = bitcast i8* %371 to %union.pthread_cond_t*
  %373 = call i32 @pthread_cond_init(%union.pthread_cond_t* nonnull %372, %"struct.std::atomic"* null) #37
  %374 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %364, null
  br i1 %374, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %375

375:                                              ; preds = %356
  %376 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %365 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %377 = atomicrmw xchg i32* %366, i32 %367 seq_cst, align 4
  %378 = icmp eq i32 %377, 1
  %379 = icmp eq i32 %367, 0
  %380 = and i1 %379, %378
  br i1 %380, label %381, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

381:                                              ; preds = %375
  %382 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %383 = and i8 %382, 1
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i, label %385

385:                                              ; preds = %381
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %376) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i: ; preds = %385, %381, %375, %356, %349
  %386 = phi %"class.(anonymous namespace)::Future"* [ null, %349 ], [ %357, %356 ], [ %357, %385 ], [ %357, %381 ], [ %357, %375 ]
  %387 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %386, i64 0, i32 1
  %388 = load i32, i32* %387, align 4, !tbaa !102
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 1
  %391 = load i64, i64* %390, align 8, !tbaa !103
  %392 = urem i64 %389, %391
  %393 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 0
  %394 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
  %395 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %394, i64 %392
  %396 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %395, align 8, !tbaa !3
  %397 = icmp eq %"struct.std::__detail::_Hash_node_base"* %396, null
  br i1 %397, label %.loopexit15, label %398

398:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %399 = bitcast %"struct.std::__detail::_Hash_node_base"* %396 to %"struct.std::__detail::_Hash_node.203"**
  %400 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %399, align 8, !tbaa !73
  %401 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %400, i64 0, i32 0, i32 1
  %402 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %401 to i32*
  %403 = load i32, i32* %402, align 4, !tbaa !74
  %404 = icmp eq i32 %388, %403
  br i1 %404, label %421, label %.preheader14

405:                                              ; preds = %412
  %406 = icmp eq i32 %388, %415
  br i1 %406, label %419, label %.preheader14

.preheader14:                                     ; preds = %405, %398
  %407 = phi %"struct.std::__detail::_Hash_node.203"* [ %411, %405 ], [ %400, %398 ]
  %408 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %407, i64 0, i32 0, i32 0, i32 0
  %409 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %408, align 8, !tbaa !73
  %410 = icmp eq %"struct.std::__detail::_Hash_node_base"* %409, null
  %411 = bitcast %"struct.std::__detail::_Hash_node_base"* %409 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %410, label %.loopexit15, label %412

412:                                              ; preds = %.preheader14
  %413 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %409, i64 1
  %414 = bitcast %"struct.std::__detail::_Hash_node_base"* %413 to i32*
  %415 = load i32, i32* %414, align 4, !tbaa !74
  %416 = sext i32 %415 to i64
  %417 = urem i64 %416, %391
  %418 = icmp eq i64 %417, %392
  br i1 %418, label %405, label %.loopexit15

419:                                              ; preds = %405
  %420 = icmp eq %"struct.std::__detail::_Hash_node.203"* %407, null
  br i1 %420, label %.loopexit15, label %530

421:                                              ; preds = %398
  %422 = icmp eq %"struct.std::__detail::_Hash_node.203"* %400, null
  br i1 %422, label %.loopexit15, label %530

.loopexit15:                                      ; preds = %421, %419, %412, %.preheader14, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit3.i.i.i.i
  %423 = call noalias dereferenceable_or_null(24) i8* @calloc(i64 1, i64 24) #37
  %424 = getelementptr inbounds i8, i8* %423, i64 8
  %425 = bitcast i8* %424 to i32*
  store i32 %388, i32* %425, align 8, !tbaa !105
  %426 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 4
  %427 = load i64, i64* %390, align 8, !tbaa !103
  %428 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 3
  %429 = load i64, i64* %428, align 8, !tbaa !107
  %430 = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(%"struct.std::__detail::_Prime_rehash_policy"* nonnull %426, i64 %427, i64 %429, i64 1)
          to label %431 unwind label %537

431:                                              ; preds = %.loopexit15
  %432 = extractvalue { i8, i64 } %430, 0
  %433 = and i8 %432, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %431
  %436 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
  br label %494

437:                                              ; preds = %431
  %438 = extractvalue { i8, i64 } %430, 1
  %439 = icmp eq i64 %438, 1
  br i1 %439, label %440, label %442, !prof !108, !misexpect !109

440:                                              ; preds = %437
  %441 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 5
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %441, align 8, !tbaa !110
  br label %446

442:                                              ; preds = %437
  %443 = call noalias i8* @calloc(i64 %438, i64 8) #37
  %444 = bitcast i8* %443 to %"struct.std::__detail::_Hash_node_base"**
  %445 = shl i64 %438, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %443, i8 0, i64 %445, i1 false) #37
  br label %446

446:                                              ; preds = %442, %440
  %447 = phi %"struct.std::__detail::_Hash_node_base"** [ %441, %440 ], [ %444, %442 ]
  %448 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 2
  %449 = bitcast %"struct.std::__detail::_Hash_node_base"* %448 to %"struct.std::__detail::_Hash_node.203"**
  %450 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %449, align 8, !tbaa !111
  %451 = getelementptr %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %448, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* null, %"struct.std::__detail::_Hash_node_base"** %451, align 8, !tbaa !111
  %452 = icmp eq %"struct.std::__detail::_Hash_node.203"* %450, null
  br i1 %452, label %.loopexit, label %453

453:                                              ; preds = %446
  %454 = bitcast %"struct.std::__detail::_Hash_node_base"* %448 to i64*
  br label %455

455:                                              ; preds = %484, %453
  %456 = phi %"struct.std::__detail::_Hash_node.203"* [ %450, %453 ], [ %459, %484 ]
  %457 = phi i64 [ 0, %453 ], [ %485, %484 ]
  %458 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to %"struct.std::__detail::_Hash_node.203"**
  %459 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %458, align 8, !tbaa !73
  %460 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 1
  %461 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %460 to i32*
  %462 = load i32, i32* %461, align 4, !tbaa !74
  %463 = sext i32 %462 to i64
  %464 = urem i64 %463, %438
  %465 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %464
  %466 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
  %467 = icmp eq %"struct.std::__detail::_Hash_node_base"* %466, null
  br i1 %467, label %468, label %477

468:                                              ; preds = %455
  %469 = load i64, i64* %454, align 8, !tbaa !111
  %470 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0
  %471 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0, i32 0
  %472 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to i64*
  store i64 %469, i64* %472, align 8, !tbaa !73
  store %"struct.std::__detail::_Hash_node_base"* %470, %"struct.std::__detail::_Hash_node_base"** %451, align 8, !tbaa !111
  store %"struct.std::__detail::_Hash_node_base"* %448, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
  %473 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %471, align 8, !tbaa !73
  %474 = icmp eq %"struct.std::__detail::_Hash_node_base"* %473, null
  br i1 %474, label %484, label %475

475:                                              ; preds = %468
  %476 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %447, i64 %457
  store %"struct.std::__detail::_Hash_node_base"* %470, %"struct.std::__detail::_Hash_node_base"** %476, align 8, !tbaa !3
  br label %484

477:                                              ; preds = %455
  %478 = bitcast %"struct.std::__detail::_Hash_node_base"* %466 to i64*
  %479 = load i64, i64* %478, align 8, !tbaa !73
  %480 = getelementptr %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %456, i64 0, i32 0, i32 0
  %481 = bitcast %"struct.std::__detail::_Hash_node.203"* %456 to i64*
  store i64 %479, i64* %481, align 8, !tbaa !73
  %482 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %465, align 8, !tbaa !3
  %483 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %482, i64 0, i32 0
  store %"struct.std::__detail::_Hash_node_base"* %480, %"struct.std::__detail::_Hash_node_base"** %483, align 8, !tbaa !73
  br label %484

484:                                              ; preds = %477, %475, %468
  %485 = phi i64 [ %457, %477 ], [ %464, %468 ], [ %464, %475 ]
  %486 = icmp eq %"struct.std::__detail::_Hash_node.203"* %459, null
  br i1 %486, label %.loopexit, label %455

.loopexit:                                        ; preds = %484, %446
  %487 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
  %488 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 5
  %489 = icmp eq %"struct.std::__detail::_Hash_node_base"** %487, %488
  br i1 %489, label %492, label %490

490:                                              ; preds = %.loopexit
  %491 = bitcast %"struct.std::__detail::_Hash_node_base"** %487 to i8*
  call void @free(i8* %491) #37
  br label %492

492:                                              ; preds = %490, %.loopexit
  store i64 %438, i64* %390, align 8, !tbaa !103
  store %"struct.std::__detail::_Hash_node_base"** %447, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
  %493 = urem i64 %389, %438
  br label %494

494:                                              ; preds = %492, %435
  %495 = phi %"struct.std::__detail::_Hash_node_base"** [ %436, %435 ], [ %447, %492 ]
  %496 = phi i64 [ %392, %435 ], [ %493, %492 ]
  %497 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %495, i64 %496
  %498 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %497, align 8, !tbaa !3
  %499 = icmp eq %"struct.std::__detail::_Hash_node_base"* %498, null
  br i1 %499, label %506, label %500

500:                                              ; preds = %494
  %501 = bitcast %"struct.std::__detail::_Hash_node_base"* %498 to i64*
  %502 = load i64, i64* %501, align 8, !tbaa !73
  %503 = bitcast i8* %423 to i64*
  store i64 %502, i64* %503, align 8, !tbaa !73
  %504 = bitcast %"struct.std::__detail::_Hash_node_base"** %497 to i8***
  %505 = load i8**, i8*** %504, align 8, !tbaa !3
  store i8* %423, i8** %505, align 8, !tbaa !73
  br label %526

506:                                              ; preds = %494
  %507 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %296, i64 0, i32 2, i32 0, i32 2
  %508 = bitcast %"struct.std::__detail::_Hash_node_base"* %507 to i64*
  %509 = load i64, i64* %508, align 8, !tbaa !111
  %510 = bitcast i8* %423 to i64*
  store i64 %509, i64* %510, align 8, !tbaa !73
  %511 = bitcast %"struct.std::__detail::_Hash_node_base"* %507 to i8**
  store i8* %423, i8** %511, align 8, !tbaa !111
  %512 = icmp eq i64 %509, 0
  br i1 %512, label %523, label %513

513:                                              ; preds = %506
  %.cast.i.i.i.i = inttoptr i64 %509 to %"struct.std::__detail::_Hash_node_base"*
  %514 = load i64, i64* %390, align 8, !tbaa !103
  %515 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %.cast.i.i.i.i, i64 1
  %516 = bitcast %"struct.std::__detail::_Hash_node_base"* %515 to i32*
  %517 = load i32, i32* %516, align 4, !tbaa !74
  %518 = sext i32 %517 to i64
  %519 = urem i64 %518, %514
  %520 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %495, i64 %519
  %521 = bitcast %"struct.std::__detail::_Hash_node_base"** %520 to i8**
  store i8* %423, i8** %521, align 8, !tbaa !3
  %522 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %393, align 8, !tbaa !104
  br label %523

523:                                              ; preds = %513, %506
  %524 = phi %"struct.std::__detail::_Hash_node_base"** [ %495, %506 ], [ %522, %513 ]
  %525 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %524, i64 %496
  store %"struct.std::__detail::_Hash_node_base"* %507, %"struct.std::__detail::_Hash_node_base"** %525, align 8, !tbaa !3
  br label %526

526:                                              ; preds = %523, %500
  %527 = load i64, i64* %428, align 8, !tbaa !107
  %528 = add i64 %527, 1
  store i64 %528, i64* %428, align 8, !tbaa !107
  %529 = bitcast i8* %424 to %"struct.std::pair.50"*
  br label %534

530:                                              ; preds = %421, %419
  %531 = phi %"struct.std::__detail::_Hash_node.203"* [ %400, %421 ], [ %411, %419 ]
  %532 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %531, i64 0, i32 0, i32 1
  %533 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %532 to %"struct.std::pair.50"*
  br label %534

534:                                              ; preds = %530, %526
  %535 = phi %"struct.std::pair.50"* [ %533, %530 ], [ %529, %526 ]
  %536 = getelementptr inbounds %"struct.std::pair.50", %"struct.std::pair.50"* %535, i64 0, i32 1
  store %"class.(anonymous namespace)::Future"* %386, %"class.(anonymous namespace)::Future"** %536, align 8, !tbaa !3
  store i32 2, i32* %243, align 8, !tbaa.struct !112
  store %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal", %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %244, align 8, !tbaa.struct !112
  store i8* %295, i8** %245, align 8, !tbaa.struct !112
  store %"class.(anonymous namespace)::Future"* %386, %"class.(anonymous namespace)::Future"** %246, align 8, !tbaa.struct !112
  store i32 %288, i32* %247, align 8, !tbaa.struct !112
  call fastcc void @_ZN6Worker6putJobEN12_GLOBAL__N_13JobEb(%class.Worker* %353, %"struct.(anonymous namespace)::Job"* nonnull byval(%"struct.(anonymous namespace)::Job") align 8 %2)
  br label %.loopexit17

537:                                              ; preds = %.loopexit15
  %538 = landingpad { i8*, i32 }
          cleanup
  %539 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %540 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, i64 328
  %541 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to i32*
  %542 = atomicrmw xchg i32* %541, i32 1 seq_cst, align 4
  %543 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %297) #37
  %544 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %539, null
  br i1 %544, label %.body.i.i.i, label %563

.loopexit17:                                      ; preds = %534, %347, %345, %338, %.preheader16, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i
  %545 = phi %"class.(anonymous namespace)::Future"* [ %386, %534 ], [ null, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit2.i.i.i.i ], [ null, %345 ], [ null, %347 ], [ null, %.preheader16 ], [ null, %338 ]
  %546 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %547 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %546, i64 328
  %548 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %547 to i32*
  %549 = atomicrmw xchg i32* %548, i32 1 seq_cst, align 4
  %550 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %297) #37
  %551 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %546, null
  br i1 %551, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %552

552:                                              ; preds = %.loopexit17
  %553 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %547 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %554 = atomicrmw xchg i32* %548, i32 %549 seq_cst, align 4
  %555 = icmp eq i32 %554, 1
  %556 = icmp eq i32 %549, 0
  %557 = and i1 %556, %555
  br i1 %557, label %558, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

558:                                              ; preds = %552
  %559 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %560 = and i8 %559, 1
  %561 = icmp eq i8 %560, 0
  br i1 %561, label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i, label %562

562:                                              ; preds = %558
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %553) #37
  br label %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i

563:                                              ; preds = %537
  %564 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %540 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %565 = atomicrmw xchg i32* %541, i32 %542 seq_cst, align 4
  %566 = icmp eq i32 %565, 1
  %567 = icmp eq i32 %542, 0
  %568 = and i1 %567, %566
  br i1 %568, label %569, label %.body.i.i.i

569:                                              ; preds = %563
  %570 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %571 = and i8 %570, 1
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %.body.i.i.i, label %573

573:                                              ; preds = %569
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %564) #37
  br label %.body.i.i.i

_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i: ; preds = %562, %558, %552, %.loopexit17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %242)
  %574 = icmp eq %"class.(anonymous namespace)::Future"* %545, null
  br i1 %574, label %575, label %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"

575:                                              ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  invoke fastcc void @ThrowWorkerAlreadyTerminated() #50
          to label %576 unwind label %579

576:                                              ; preds = %575
  unreachable

577:                                              ; preds = %"kfun:kotlin.native.concurrent.TransferMode#$getEnumAt#static(kotlin.Int){}kotlin.native.concurrent.TransferMode.exit.i"
  %578 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

579:                                              ; preds = %575
  %580 = landingpad { i8*, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %579, %577, %573, %569, %563, %537
  %581 = phi { i8*, i32 } [ %578, %577 ], [ %580, %579 ], [ %538, %563 ], [ %538, %569 ], [ %538, %573 ], [ %538, %537 ]
  %582 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %583 = load i64, i64* %239, align 8, !tbaa !9
  %584 = bitcast %"class.kotlin::mm::ShadowStack"* %582 to i64*
  store i64 %583, i64* %584, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %236) #37
  resume { i8*, i32 } %581

"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i": ; preds = %_ZN12_GLOBAL__N_15State22addJobToWorkerUnlockedEiPvS1_bi.exit.i.i.i
  %585 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %545, i64 0, i32 1
  %586 = load i32, i32* %585, align 4, !tbaa !102
  %587 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %588 = load i64, i64* %239, align 8, !tbaa !9
  %589 = bitcast %"class.kotlin::mm::ShadowStack"* %587 to i64*
  store i64 %588, i64* %589, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %236) #37
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %590 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %591 = bitcast %"class.kotlin::mm::ShadowStack"* %590 to i64*
  %592 = load i64, i64* %591, align 8, !tbaa !7
  store i64 %592, i64* %120, align 8, !tbaa !9
  %593 = bitcast %"class.kotlin::mm::ShadowStack"* %590 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %593, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %594 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %595 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %594 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %596 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %595, align 8, !tbaa !3
  %597 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %596, i64 0, i32 2, i32 1
  %598 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %597, i64 24) #37
  %599 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 1
  %600 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 2
  %601 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600 to %struct.TypeInfo**
  %602 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %599 to i64*
  store i64 0, i64* %602, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.native.concurrent.Future#internal", i64 0, i32 0), %struct.TypeInfo** %601, align 8, !tbaa !14
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %124, align 8, !tbaa !3
  %603 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %598, i64 3
  %604 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %603 to i32*
  store i32 %586, i32* %604, align 8
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %248, align 8, !tbaa !3
  %605 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %606 = load i64, i64* %120, align 8, !tbaa !9
  %607 = bitcast %"class.kotlin::mm::ShadowStack"* %605 to i64*
  store i64 %606, i64* %607, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %608 = load i32, i32* %231, align 8, !tbaa !18
  %609 = zext i32 %608 to i64
  %610 = icmp ult i64 %indvars.iv49, %609
  br i1 %610, label %Kotlin_Array_set.exit.i, label %611

611:                                              ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %"kfun:kotlin.native.concurrent#executeImpl(kotlin.native.concurrent.Worker;kotlin.native.concurrent.TransferMode;kotlin.Function0<kotlin.Any?>;kotlinx.cinterop.CPointer<kotlinx.cinterop.CFunction<*>>){}kotlin.native.concurrent.Future<kotlin.Any?>.exit.i"
  %612 = load atomic volatile i64, i64* %249 monotonic, align 8
  %613 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, i64 %indvars.iv49
  %614 = getelementptr %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %613, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %600, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %614, align 8, !tbaa !3
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_Array_set.exit.i, %AllocArrayInstance.exit.i
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %Kotlin_Array_set.exit.i ], [ 0, %AllocArrayInstance.exit.i ]
  %exitcond52.not = icmp eq i64 %indvars.iv49, %wide.trip.count51
  br i1 %exitcond52.not, label %loop_exit.i, label %while_loop.i

loop_exit.i:                                      ; preds = %loop_check.i
  %615 = load i32, i32* %231, align 8, !tbaa !18
  %616 = icmp sgt i32 %615, 0
  %smax = select i1 %616, i32 %615, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check17.i

while_loop18.i:                                   ; preds = %loop_check17.i
  %617 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %618 = and i8 %617, 1
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %Kotlin_mm_safePointWhileLoopBody.exit49.i, label %620

620:                                              ; preds = %while_loop18.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit49.i

Kotlin_mm_safePointWhileLoopBody.exit49.i:        ; preds = %620, %while_loop18.i
  %621 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %250, i64 %indvars.iv
  %622 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %621 to %struct.ObjHeader**
  %623 = load %struct.ObjHeader*, %struct.ObjHeader** %622, align 8, !tbaa !3
  store %struct.ObjHeader* %623, %struct.ObjHeader** %190, align 8, !tbaa !3
  %624 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %623, i64 1
  %625 = bitcast %struct.ObjHeader* %624 to i32*
  %626 = load i32, i32* %625, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %116)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %116, i8 0, i32 32, i1 immarg false) #49
  %627 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %628 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to i64*
  %629 = load i64, i64* %628, align 8, !tbaa !7
  store i64 %629, i64* %120, align 8, !tbaa !9
  %630 = bitcast %"class.kotlin::mm::ShadowStack"* %627 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i12, %struct.ObjHeader*** %630, align 8, !tbaa !7
  store i32 0, i32* %122, align 8, !tbaa !12
  store i32 4, i32* %123, align 4, !tbaa !13
  %631 = load atomic i32, i32* @"state_global$kotlin.native.concurrent.FutureState" acquire, align 4
  %632 = icmp eq i32 %631, 2
  br i1 %632, label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i", label %label_init.i.i.i

label_init.i.i.i:                                 ; preds = %Kotlin_mm_safePointWhileLoopBody.exit49.i
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$kotlin.native.concurrent.FutureState", void ()* nonnull @"kfun:kotlin.native.concurrent.FutureState.$init_global#internal")
  br label %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"

"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i": ; preds = %label_init.i.i.i, %Kotlin_mm_safePointWhileLoopBody.exit49.i
  %633 = load %struct.ObjHeader*, %struct.ObjHeader** @"kvar:kotlin.native.concurrent.FutureState.$VALUES#internal", align 8
  %634 = call fastcc %struct.ObjHeader* @"kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0\C2\A7<kotlin.Enum<0:0>>}kotlin.Array<0:0>"(%struct.ObjHeader* %633, %struct.ObjHeader** nonnull %117)
  store %struct.ObjHeader* %634, %struct.ObjHeader** %117, align 8, !tbaa !3
  %635 = call fastcc %"class.(anonymous namespace)::State"* @_ZN12_GLOBAL__N_18theStateEv() #37
  %636 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 0
  %637 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %638 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %637, i64 328
  %639 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %638 to i32*
  %640 = atomicrmw xchg i32* %639, i32 1 seq_cst, align 4
  %641 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %636) #37
  %642 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %637, null
  br i1 %642, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %643

643:                                              ; preds = %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %644 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %638 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %645 = atomicrmw xchg i32* %639, i32 %640 seq_cst, align 4
  %646 = icmp eq i32 %645, 1
  %647 = icmp eq i32 %640, 0
  %648 = and i1 %647, %646
  br i1 %648, label %649, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

649:                                              ; preds = %643
  %650 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %651 = and i8 %650, 1
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i, label %653

653:                                              ; preds = %649
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %644) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i: ; preds = %653, %649, %643, %"kfun:kotlin.native.concurrent.FutureState#values#static(){}kotlin.Array<kotlin.native.concurrent.FutureState>.exit.i.i"
  %654 = sext i32 %626 to i64
  %655 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 2, i32 0, i32 1
  %656 = load i64, i64* %655, align 8, !tbaa !103
  %657 = urem i64 %654, %656
  %658 = getelementptr inbounds %"class.(anonymous namespace)::State", %"class.(anonymous namespace)::State"* %635, i64 0, i32 2, i32 0, i32 0
  %659 = load %"struct.std::__detail::_Hash_node_base"**, %"struct.std::__detail::_Hash_node_base"*** %658, align 8, !tbaa !104
  %660 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %659, i64 %657
  %661 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %660, align 8, !tbaa !3
  %662 = icmp eq %"struct.std::__detail::_Hash_node_base"* %661, null
  br i1 %662, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %663

663:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %664 = bitcast %"struct.std::__detail::_Hash_node_base"* %661 to %"struct.std::__detail::_Hash_node.203"**
  %665 = load %"struct.std::__detail::_Hash_node.203"*, %"struct.std::__detail::_Hash_node.203"** %664, align 8, !tbaa !73
  %666 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %665, i64 0, i32 0, i32 1
  %667 = bitcast %"struct.__gnu_cxx::__aligned_buffer.201"* %666 to i32*
  %668 = load i32, i32* %667, align 4, !tbaa !74
  %669 = icmp eq i32 %668, %626
  br i1 %669, label %686, label %.preheader

670:                                              ; preds = %677
  %671 = icmp eq i32 %680, %626
  br i1 %671, label %684, label %.preheader

.preheader:                                       ; preds = %670, %663
  %672 = phi %"struct.std::__detail::_Hash_node.203"* [ %676, %670 ], [ %665, %663 ]
  %673 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %672, i64 0, i32 0, i32 0, i32 0
  %674 = load %"struct.std::__detail::_Hash_node_base"*, %"struct.std::__detail::_Hash_node_base"** %673, align 8, !tbaa !73
  %675 = icmp eq %"struct.std::__detail::_Hash_node_base"* %674, null
  %676 = bitcast %"struct.std::__detail::_Hash_node_base"* %674 to %"struct.std::__detail::_Hash_node.203"*
  br i1 %675, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %677

677:                                              ; preds = %.preheader
  %678 = getelementptr inbounds %"struct.std::__detail::_Hash_node_base", %"struct.std::__detail::_Hash_node_base"* %674, i64 1
  %679 = bitcast %"struct.std::__detail::_Hash_node_base"* %678 to i32*
  %680 = load i32, i32* %679, align 4, !tbaa !74
  %681 = sext i32 %680 to i64
  %682 = urem i64 %681, %656
  %683 = icmp eq i64 %682, %657
  br i1 %683, label %670, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

684:                                              ; preds = %670
  %685 = icmp eq %"struct.std::__detail::_Hash_node.203"* %672, null
  br i1 %685, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %688

686:                                              ; preds = %663
  %687 = icmp eq %"struct.std::__detail::_Hash_node.203"* %665, null
  br i1 %687, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %688

688:                                              ; preds = %686, %684
  %689 = phi %"struct.std::__detail::_Hash_node.203"* [ %676, %684 ], [ %665, %686 ]
  %690 = getelementptr inbounds %"struct.std::__detail::_Hash_node.203", %"struct.std::__detail::_Hash_node.203"* %689, i64 0, i32 0, i32 1, i32 0, i32 0, i64 8
  %691 = bitcast i8* %690 to %"class.(anonymous namespace)::Future"**
  %692 = load %"class.(anonymous namespace)::Future"*, %"class.(anonymous namespace)::Future"** %691, align 8, !tbaa !114
  %693 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %692, i64 0, i32 3
  %694 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %695 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %694, i64 328
  %696 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %695 to i32*
  %697 = atomicrmw xchg i32* %696, i32 1 seq_cst, align 4
  %698 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %693) #37
  %699 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %694, null
  br i1 %699, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %700

700:                                              ; preds = %688
  %701 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %695 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %702 = atomicrmw xchg i32* %696, i32 %697 seq_cst, align 4
  %703 = icmp eq i32 %702, 1
  %704 = icmp eq i32 %697, 0
  %705 = and i1 %704, %703
  br i1 %705, label %706, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

706:                                              ; preds = %700
  %707 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %708 = and i8 %707, 1
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, label %710

710:                                              ; preds = %706
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %701) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i: ; preds = %710, %706, %700, %688
  %711 = getelementptr inbounds %"class.(anonymous namespace)::Future", %"class.(anonymous namespace)::Future"* %692, i64 0, i32 0
  %712 = load i32, i32* %711, align 8, !tbaa !100
  %713 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %714 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %713, i64 328
  %715 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %714 to i32*
  %716 = atomicrmw xchg i32* %715, i32 1 seq_cst, align 4
  %717 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %693) #37
  %718 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %713, null
  br i1 %718, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %719

719:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i
  %720 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %714 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %721 = atomicrmw xchg i32* %715, i32 %716 seq_cst, align 4
  %722 = icmp eq i32 %721, 1
  %723 = icmp eq i32 %716, 0
  %724 = and i1 %723, %722
  br i1 %724, label %725, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

725:                                              ; preds = %719
  %726 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %727 = and i8 %726, 1
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i, label %729

729:                                              ; preds = %725
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %720) #37
  br label %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i

_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i: ; preds = %729, %725, %719, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i, %686, %684, %677, %.preheader, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i
  %730 = phi i32 [ 0, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit8.i.i.i ], [ 0, %684 ], [ 0, %686 ], [ %712, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit9.i.i.i ], [ %712, %729 ], [ %712, %725 ], [ %712, %719 ], [ 0, %.preheader ], [ 0, %677 ]
  %731 = load %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"*, %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"** bitcast (%"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E to %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"**), align 8, !tbaa !3
  %732 = getelementptr inbounds %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte", %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %731, i64 328
  %733 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %732 to i32*
  %734 = atomicrmw xchg i32* %733, i32 1 seq_cst, align 4
  %735 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %636) #37
  %736 = icmp eq %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %731, null
  br i1 %736, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %737

737:                                              ; preds = %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %738 = bitcast %"struct.std::_Optional_payload<unsigned long, true, true, true>::_Empty_byte"* %732 to %"class.kotlin::mm::ThreadSuspensionData.37"*
  %739 = atomicrmw xchg i32* %733, i32 %734 seq_cst, align 4
  %740 = icmp eq i32 %739, 1
  %741 = icmp eq i32 %734, 0
  %742 = and i1 %741, %740
  br i1 %742, label %743, label %Kotlin_Worker_stateOfFuture.exit.i.i

743:                                              ; preds = %737
  %744 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %745 = and i8 %744, 1
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %Kotlin_Worker_stateOfFuture.exit.i.i, label %747

747:                                              ; preds = %743
  call void @_ZN6kotlin2mm20ThreadSuspensionData26suspendIfRequestedSlowPathEv(%"class.kotlin::mm::ThreadSuspensionData.37"* nonnull %738) #37
  br label %Kotlin_Worker_stateOfFuture.exit.i.i

Kotlin_Worker_stateOfFuture.exit.i.i:             ; preds = %747, %743, %737, %_ZN6kotlin17SwitchThreadStateEP11MemoryStateNS_11ThreadStateEb.exit7.i.i.i
  %748 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %634, i64 1
  %749 = bitcast %struct.ObjHeader* %748 to i32*
  %750 = load i32, i32* %749, align 8, !tbaa !18
  %751 = icmp ugt i32 %750, %730
  br i1 %751, label %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", label %752

752:                                              ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i": ; preds = %Kotlin_Worker_stateOfFuture.exit.i.i
  %753 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %634, i64 2
  %754 = sext i32 %730 to i64
  %755 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %753, i64 %754
  %756 = bitcast %struct.ObjHeader* %755 to %struct.ObjHeader**
  %757 = load %struct.ObjHeader*, %struct.ObjHeader** %756, align 8, !tbaa !3
  store %struct.ObjHeader* %757, %struct.ObjHeader** %191, align 8, !tbaa !3
  %758 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %759 = load i64, i64* %120, align 8, !tbaa !9
  %760 = bitcast %"class.kotlin::mm::ShadowStack"* %758 to i64*
  store i64 %759, i64* %760, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %116)
  %761 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %757, i64 2
  %762 = bitcast %struct.ObjHeader* %761 to i32*
  %763 = load i32, i32* %762, align 4
  switch i32 %763, label %when_next27.i [
    i32 1, label %when_case21.i
    i32 2, label %when_case21.i
    i32 0, label %when_case22.i
    i32 3, label %when_case24.i
    i32 4, label %when_case26.i
  ]

when_case21.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i", %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %192)
  br label %loop_check17.i

when_case22.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %764 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 12
  %765 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %766 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %765 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %767 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %766, align 8, !tbaa !3
  %768 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %767, i64 0, i32 2, i32 1
  %769 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %768, i64 56) #37
  %770 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 1
  %771 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %769, i64 2
  %772 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.ObjHeader*
  %773 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771 to %struct.TypeInfo**
  %774 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %770 to i64*
  store i64 0, i64* %774, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %773, align 8, !tbaa !14
  %775 = bitcast %struct.ObjHeader** %764 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %771, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %775, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %772, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [29 x i16] }* @134 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %772) #50
  unreachable

when_case24.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %776 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 14
  %777 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 13
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %777)
  %778 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %779 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %778 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %780 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %779, align 8, !tbaa !3
  %781 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %780, i64 0, i32 2, i32 1
  %782 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %781, i64 56) #37
  %783 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %782, i64 1
  %784 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %782, i64 2
  %785 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784 to %struct.ObjHeader*
  %786 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784 to %struct.TypeInfo**
  %787 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %783 to i64*
  store i64 0, i64* %787, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %786, align 8, !tbaa !14
  %788 = bitcast %struct.ObjHeader** %776 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %784, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %788, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %785, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [19 x i16] }* @135 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %785) #50
  unreachable

when_case26.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  %789 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 16
  %790 = getelementptr inbounds [17 x %struct.ObjHeader*], [17 x %struct.ObjHeader*]* %4, i64 0, i64 15
  call fastcc void @Kotlin_Worker_consumeFuture(i32 %626, %struct.ObjHeader** nonnull %790)
  %791 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 6
  %792 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %791 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %793 = load %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %792, align 8, !tbaa !3
  %794 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %793, i64 0, i32 2, i32 1
  %795 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %794, i64 56) #37
  %796 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795, i64 1
  %797 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %795, i64 2
  %798 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797 to %struct.ObjHeader*
  %799 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797 to %struct.TypeInfo**
  %800 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %796 to i64*
  store i64 0, i64* %800, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.IllegalStateException#internal", i64 0, i32 0), %struct.TypeInfo** %799, align 8, !tbaa !14
  %801 = bitcast %struct.ObjHeader** %789 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %797, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %801, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.RuntimeException#<init>(kotlin.String?){}"(%struct.ObjHeader* nonnull %798, %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [27 x i16] }* @136 to %struct.ObjHeader*))
  call fastcc void @ThrowException(%struct.ObjHeader* nonnull %798) #50
  unreachable

when_next27.i:                                    ; preds = %"kfun:kotlin.native.concurrent.Future#<get-state>(){}kotlin.native.concurrent.FutureState.exit.i"
  call fastcc void @"kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing"() #50
  unreachable

loop_check17.i:                                   ; preds = %when_case21.i, %loop_exit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_case21.i ], [ 0, %loop_exit.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop18.i

epilogue:                                         ; preds = %loop_check17.i
  %802 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %803 = bitcast %"class.kotlin::mm::ShadowStack"* %802 to i64*
  call void @llvm.lifetime.end.p0i8(i64 136, i8* nonnull %187)
  %804 = load i64, i64* %14, align 8, !tbaa !9
  store i64 %804, i64* %803, align 8, !tbaa !7
  ret void
}
