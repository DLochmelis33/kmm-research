define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [16 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:ForLoopsBenchmark#internal", align 8
  %5 = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 1
  %6 = bitcast %struct.ObjHeader** %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(72) %6, i8 0, i32 64, i1 immarg false) #49
  %objHeader = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ForLoopsBenchmark#internal", %"kclassbody:ForLoopsBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ForLoopsBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %7 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %8 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %9 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %10 = bitcast %"class.kotlin::mm::ShadowStack"* %8 to i64*
  %11 = load atomic i64, i64* %10 unordered, align 8, !tbaa !7
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
  %18 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %Kotlin_mm_safePointFunctionPrologue.exit, label %21

21:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %21, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %22 = bitcast [16 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %22)
  %.sub.i = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(128) %22, i8 0, i32 128, i1 immarg false) #49
  %23 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %24 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %25 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %26 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 7
  %27 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 8
  %28 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 9
  %29 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 10
  %30 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 12
  %31 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 14
  %32 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %33 = bitcast [16 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %34 = bitcast %"class.kotlin::mm::ShadowStack"* %32 to i64*
  %35 = load atomic i64, i64* %34 unordered, align 8, !tbaa !7
  %36 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %37 = bitcast %struct.ObjHeader** %36 to i64*
  store i64 %35, i64* %37, align 8, !tbaa !9
  %38 = bitcast %"class.kotlin::mm::ShadowStack"* %32 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %38, align 8, !tbaa !7
  %39 = getelementptr inbounds [16 x %struct.ObjHeader*], [16 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %40 = bitcast %struct.ObjHeader** %39 to i32*
  store i32 0, i32* %40, align 8, !tbaa !12
  %41 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %33, i64 0, i32 3
  store i32 16, i32* %41, align 4, !tbaa !13
  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %43 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %42 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %44 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %43 unordered, align 8, !tbaa !3
  %45 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %44, i64 0, i32 2, i32 1
  %46 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %45, i64 80024) #37
  %47 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 1
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 2
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to %struct.TypeInfo**
  %50 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.Array#internal", i64 0, i32 0), %struct.TypeInfo** %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 3
  %52 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %51 to i32*
  store i32 10000, i32* %52, align 8, !tbaa !18
  %53 = bitcast %struct.ObjHeader** %23 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %53, align 8, !tbaa !3
  %54 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i64*
  %55 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %46, i64 4
  br label %loop_check.i4

while_loop.i2:                                    ; preds = %loop_check.i4
  %56 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %Kotlin_mm_safePointWhileLoopBody.exit.i3, label %59

59:                                               ; preds = %while_loop.i2
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i3

Kotlin_mm_safePointWhileLoopBody.exit.i3:         ; preds = %59, %while_loop.i2
  %60 = trunc i64 %indvars.iv21 to i32
  %61 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %60, %struct.ObjHeader** nonnull %24)
  %62 = load atomic i32, i32* %52 unordered, align 8, !tbaa !18
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %indvars.iv21, %63
  br i1 %64, label %Kotlin_Array_set.exit.i, label %65

65:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_Array_set.exit.i:                          ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i3
  %66 = load atomic volatile i64, i64* %54 monotonic, align 8
  %67 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 %indvars.iv21
  %68 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %67 to %struct.ObjHeader**
  store %struct.ObjHeader* %61, %struct.ObjHeader** %68, align 8, !tbaa !3
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %loop_check.i4

loop_check.i4:                                    ; preds = %Kotlin_Array_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %Kotlin_Array_set.exit.i ], [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %exitcond23.not = icmp eq i64 %indvars.iv21, 10000
  br i1 %exitcond23.not, label %loop_exit.i, label %while_loop.i2

loop_exit.i:                                      ; preds = %loop_check.i4
  %69 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %70 = bitcast %struct.ObjHeader* %69 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %70, align 8, !tbaa !3
  %71 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %72 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %71 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %73 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %72 unordered, align 8, !tbaa !3
  %74 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %73, i64 0, i32 2, i32 1
  %75 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %74, i64 40024) #37
  %76 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 1
  %77 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 2
  %78 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to %struct.TypeInfo**
  %79 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %76 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %78, align 8, !tbaa !16
  %80 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 3
  %81 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %80 to i32*
  store i32 10000, i32* %81, align 8, !tbaa !18
  %82 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %82, align 8, !tbaa !3
  %83 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77 to i64*
  %84 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %75, i64 4
  %85 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %84 to i32*
  br label %loop_check15.i

while_loop16.i:                                   ; preds = %loop_check15.i
  %86 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %Kotlin_mm_safePointWhileLoopBody.exit99.i, label %89

89:                                               ; preds = %while_loop16.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit99.i

Kotlin_mm_safePointWhileLoopBody.exit99.i:        ; preds = %89, %while_loop16.i
  %90 = load atomic i32, i32* %81 unordered, align 8, !tbaa !18
  %91 = zext i32 %90 to i64
  %92 = icmp ult i64 %indvars.iv18, %91
  br i1 %92, label %Kotlin_IntArray_set.exit.i, label %93

93:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit99.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit99.i
  %94 = load atomic volatile i64, i64* %83 monotonic, align 8
  %95 = getelementptr inbounds i32, i32* %85, i64 %indvars.iv18
  %96 = trunc i64 %indvars.iv18 to i32
  store i32 %96, i32* %95, align 4, !tbaa !66
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %loop_check15.i

loop_check15.i:                                   ; preds = %Kotlin_IntArray_set.exit.i, %loop_exit.i
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %Kotlin_IntArray_set.exit.i ], [ 0, %loop_exit.i ]
  %exitcond20.not = icmp eq i64 %indvars.iv18, 10000
  br i1 %exitcond20.not, label %loop_exit14.i, label %while_loop16.i

loop_exit14.i:                                    ; preds = %loop_check15.i
  %97 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 2
  %98 = bitcast %struct.ObjHeader* %97 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %77, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %98, align 8, !tbaa !3
  %99 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %100 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %99 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %101 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %100 unordered, align 8, !tbaa !3
  %102 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %101, i64 0, i32 2, i32 1
  %103 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %102, i64 20024) #37
  %104 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, i64 1
  %105 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, i64 2
  %106 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105 to %struct.TypeInfo**
  %107 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %104 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %107, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.CharArray#internal", i64 0, i32 0), %struct.TypeInfo** %106, align 8, !tbaa !16
  %108 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, i64 3
  %109 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %108 to i32*
  store i32 10000, i32* %109, align 8, !tbaa !18
  %110 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %110, align 8, !tbaa !3
  %111 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105 to i64*
  %112 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %103, i64 4
  %113 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %112 to i16*
  br label %loop_check24.i

while_loop25.i:                                   ; preds = %loop_check24.i
  %114 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %Kotlin_mm_safePointWhileLoopBody.exit100.i, label %117

117:                                              ; preds = %while_loop25.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit100.i

Kotlin_mm_safePointWhileLoopBody.exit100.i:       ; preds = %117, %while_loop25.i
  %118 = load atomic i32, i32* %109 unordered, align 8, !tbaa !18
  %119 = zext i32 %118 to i64
  %120 = icmp ult i64 %indvars.iv15, %119
  br i1 %120, label %Kotlin_CharArray_set.exit.i, label %121

121:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit100.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_CharArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit100.i
  %122 = trunc i32 %tmp20.0.i to i16
  %123 = load atomic volatile i64, i64* %111 monotonic, align 8
  %124 = getelementptr inbounds i16, i16* %113, i64 %indvars.iv15
  store i16 %122, i16* %124, align 2, !tbaa !27
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %125 = add nuw nsw i32 %tmp20.0.i, 1
  br label %loop_check24.i

loop_check24.i:                                   ; preds = %Kotlin_CharArray_set.exit.i, %loop_exit14.i
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %Kotlin_CharArray_set.exit.i ], [ 0, %loop_exit14.i ]
  %tmp20.0.i = phi i32 [ %125, %Kotlin_CharArray_set.exit.i ], [ 0, %loop_exit14.i ]
  %exitcond17.not = icmp eq i64 %indvars.iv15, 10000
  br i1 %exitcond17.not, label %loop_exit23.i, label %while_loop25.i

loop_exit23.i:                                    ; preds = %loop_check24.i
  %126 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 3
  %127 = bitcast %struct.ObjHeader* %126 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %105, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %127, align 8, !tbaa !3
  %128 = bitcast %struct.ObjHeader* %126 to %struct.ObjHeader**
  %129 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %128 unordered, align 8
  %130 = call fastcc %struct.ObjHeader* @"kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String"(%struct.ObjHeader* %129, %struct.ObjHeader** nonnull %27)
  store %struct.ObjHeader* %130, %struct.ObjHeader** %27, align 8, !tbaa !3
  %131 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 4
  %132 = bitcast %struct.ObjHeader* %131 to %struct.ObjHeader**
  store %struct.ObjHeader* %130, %struct.ObjHeader** %132, align 8, !tbaa !3
  %133 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %134 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %133 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %135 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %134 unordered, align 8, !tbaa !3
  %136 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %135, i64 0, i32 2, i32 1
  %137 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %136, i64 40024) #37
  %138 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 1
  %139 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 2
  %140 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to %struct.TypeInfo**
  %141 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %138 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %141, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.FloatArray#internal", i64 0, i32 0), %struct.TypeInfo** %140, align 8, !tbaa !16
  %142 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 3
  %143 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %142 to i32*
  store i32 10000, i32* %143, align 8, !tbaa !18
  %144 = bitcast %struct.ObjHeader** %28 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %144, align 8, !tbaa !3
  %145 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139 to i64*
  %146 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %137, i64 4
  %147 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %146 to float*
  br label %loop_check34.i

while_loop35.i:                                   ; preds = %loop_check34.i
  %148 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %Kotlin_mm_safePointWhileLoopBody.exit101.i, label %151

151:                                              ; preds = %while_loop35.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit101.i

Kotlin_mm_safePointWhileLoopBody.exit101.i:       ; preds = %151, %while_loop35.i
  %152 = load atomic i32, i32* %143 unordered, align 8, !tbaa !18
  %153 = zext i32 %152 to i64
  %154 = icmp ult i64 %indvars.iv12, %153
  br i1 %154, label %Kotlin_FloatArray_set.exit.i, label %155

155:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit101.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_FloatArray_set.exit.i:                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit101.i
  %156 = trunc i64 %indvars.iv12 to i32
  %157 = sitofp i32 %156 to float
  %158 = load atomic volatile i64, i64* %145 monotonic, align 8
  %159 = getelementptr inbounds float, float* %147, i64 %indvars.iv12
  store float %157, float* %159, align 4, !tbaa !75
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %loop_check34.i

loop_check34.i:                                   ; preds = %Kotlin_FloatArray_set.exit.i, %loop_exit23.i
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %Kotlin_FloatArray_set.exit.i ], [ 0, %loop_exit23.i ]
  %exitcond14.not = icmp eq i64 %indvars.iv12, 10000
  br i1 %exitcond14.not, label %loop_exit33.i, label %while_loop35.i

loop_exit33.i:                                    ; preds = %loop_check34.i
  %160 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 5
  %161 = bitcast %struct.ObjHeader* %160 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %139, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %161, align 8, !tbaa !3
  %162 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %163 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %162 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %164 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %163 unordered, align 8, !tbaa !3
  %165 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %164, i64 0, i32 2, i32 1
  %166 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %165, i64 40024) #37
  %167 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166, i64 1
  %168 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166, i64 2
  %169 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168 to %struct.TypeInfo**
  %170 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %167 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %170, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %169, align 8, !tbaa !16
  %171 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166, i64 3
  %172 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %171 to i32*
  store i32 10000, i32* %172, align 8, !tbaa !18
  %173 = bitcast %struct.ObjHeader** %29 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %173, align 8, !tbaa !3
  %174 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168 to i64*
  %175 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %166, i64 4
  %176 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %175 to i32*
  br label %loop_check43.i

while_loop44.i:                                   ; preds = %loop_check43.i
  %177 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %Kotlin_mm_safePointWhileLoopBody.exit102.i, label %180

180:                                              ; preds = %while_loop44.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit102.i

Kotlin_mm_safePointWhileLoopBody.exit102.i:       ; preds = %180, %while_loop44.i
  %181 = load atomic i32, i32* %172 unordered, align 8, !tbaa !18
  %182 = zext i32 %181 to i64
  %183 = icmp ult i64 %indvars.iv9, %182
  br i1 %183, label %Kotlin_IntArray_set.exit103.i, label %184

184:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit102.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_IntArray_set.exit103.i:                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit102.i
  %185 = load atomic volatile i64, i64* %174 monotonic, align 8
  %186 = getelementptr inbounds i32, i32* %176, i64 %indvars.iv9
  %187 = trunc i64 %indvars.iv9 to i32
  store i32 %187, i32* %186, align 4, !tbaa !66
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %loop_check43.i

loop_check43.i:                                   ; preds = %Kotlin_IntArray_set.exit103.i, %loop_exit33.i
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %Kotlin_IntArray_set.exit103.i ], [ 0, %loop_exit33.i ]
  %exitcond11.not = icmp eq i64 %indvars.iv9, 10000
  br i1 %exitcond11.not, label %loop_exit42.i, label %while_loop44.i

loop_exit42.i:                                    ; preds = %loop_check43.i
  %188 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 6
  %189 = bitcast %struct.ObjHeader* %188 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %168, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %189, align 8, !tbaa !3
  %190 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %191 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %190 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %192 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %191 unordered, align 8, !tbaa !3
  %193 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %192, i64 0, i32 2, i32 1
  %194 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %193, i64 20024) #37
  %195 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %194, i64 1
  %196 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %194, i64 2
  %197 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %196 to %struct.TypeInfo**
  %198 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %195 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %198, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.ShortArray#internal", i64 0, i32 0), %struct.TypeInfo** %197, align 8, !tbaa !16
  %199 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %194, i64 3
  %200 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %199 to i32*
  store i32 10000, i32* %200, align 8, !tbaa !18
  %201 = bitcast %struct.ObjHeader** %30 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %196, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %201, align 8, !tbaa !3
  %202 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %196 to i64*
  %203 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %194, i64 4
  %204 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %203 to i16*
  br label %loop_check63.i

while_loop64.i:                                   ; preds = %loop_check63.i
  %205 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %Kotlin_mm_safePointWhileLoopBody.exit104.i, label %208

208:                                              ; preds = %while_loop64.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit104.i

Kotlin_mm_safePointWhileLoopBody.exit104.i:       ; preds = %208, %while_loop64.i
  %209 = load atomic i32, i32* %200 unordered, align 8, !tbaa !18
  %210 = zext i32 %209 to i64
  %211 = icmp ult i64 %indvars.iv6, %210
  br i1 %211, label %Kotlin_ShortArray_set.exit.i, label %212

212:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit104.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_ShortArray_set.exit.i:                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit104.i
  %213 = trunc i32 %tmp59.0.i to i16
  %214 = load atomic volatile i64, i64* %202 monotonic, align 8
  %215 = getelementptr inbounds i16, i16* %204, i64 %indvars.iv6
  store i16 %213, i16* %215, align 2, !tbaa !27
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %216 = add nuw nsw i32 %tmp59.0.i, 1
  br label %loop_check63.i

loop_check63.i:                                   ; preds = %Kotlin_ShortArray_set.exit.i, %loop_exit42.i
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %Kotlin_ShortArray_set.exit.i ], [ 0, %loop_exit42.i ]
  %tmp59.0.i = phi i32 [ %216, %Kotlin_ShortArray_set.exit.i ], [ 0, %loop_exit42.i ]
  %exitcond8.not = icmp eq i64 %indvars.iv6, 10000
  br i1 %exitcond8.not, label %loop_exit62.i, label %while_loop64.i

loop_exit62.i:                                    ; preds = %loop_check63.i
  %217 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 7
  %218 = bitcast %struct.ObjHeader* %217 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %196, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %218, align 8, !tbaa !3
  %219 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 6
  %220 = bitcast %"class.kotlin::gc::GC::ThreadData.35"* %219 to %"class.kotlin::gc::GC::ThreadData::Impl"**
  %221 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl"*, %"class.kotlin::gc::GC::ThreadData::Impl"** %220 unordered, align 8, !tbaa !3
  %222 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl", %"class.kotlin::gc::GC::ThreadData::Impl"* %221, i64 0, i32 2, i32 1
  %223 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %222, i64 80024) #37
  %224 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %223, i64 1
  %225 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %223, i64 2
  %226 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225 to %struct.TypeInfo**
  %227 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %224 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %227, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.LongArray#internal", i64 0, i32 0), %struct.TypeInfo** %226, align 8, !tbaa !16
  %228 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %223, i64 3
  %229 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %228 to i32*
  store i32 10000, i32* %229, align 8, !tbaa !18
  %230 = bitcast %struct.ObjHeader** %31 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %230, align 8, !tbaa !3
  %231 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225 to i64*
  %232 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %223, i64 4
  br label %loop_check83.i

while_loop84.i:                                   ; preds = %loop_check83.i
  %233 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %Kotlin_mm_safePointWhileLoopBody.exit105.i, label %236

236:                                              ; preds = %while_loop84.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit105.i

Kotlin_mm_safePointWhileLoopBody.exit105.i:       ; preds = %236, %while_loop84.i
  %237 = load atomic i32, i32* %229 unordered, align 8, !tbaa !18
  %238 = zext i32 %237 to i64
  %239 = icmp ult i64 %indvars.iv, %238
  br i1 %239, label %Kotlin_LongArray_set.exit.i, label %240

240:                                              ; preds = %Kotlin_mm_safePointWhileLoopBody.exit105.i
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_LongArray_set.exit.i:                      ; preds = %Kotlin_mm_safePointWhileLoopBody.exit105.i
  %241 = load atomic volatile i64, i64* %231 monotonic, align 8
  %242 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %232, i64 %indvars.iv
  %243 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %242 to i64*
  store i64 %indvars.iv, i64* %243, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %loop_check83.i

loop_check83.i:                                   ; preds = %Kotlin_LongArray_set.exit.i, %loop_exit62.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %Kotlin_LongArray_set.exit.i ], [ 0, %loop_exit62.i ]
  %exitcond5.not = icmp eq i64 %indvars.iv, 10000
  br i1 %exitcond5.not, label %call_success, label %while_loop84.i

call_success:                                     ; preds = %loop_check83.i
  %244 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 8
  %245 = bitcast %struct.ObjHeader* %244 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %225, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %245, align 8, !tbaa !3
  %246 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %247 = load atomic i64, i64* %37 unordered, align 8, !tbaa !9
  %248 = bitcast %"class.kotlin::mm::ShadowStack"* %246 to i64*
  store i64 %247, i64* %248, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %22)
  %249 = bitcast %struct.ObjHeader* %244 to %struct.ObjHeader**
  %250 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %249 unordered, align 8
  %251 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %250, i64 1
  %252 = bitcast %struct.ObjHeader* %251 to i32*
  %253 = load atomic i32, i32* %252 unordered, align 8, !tbaa !18
  %254 = icmp sgt i32 %253, 0
  %smax = select i1 %254, i32 %253, i32 0
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %255 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic.2", %"struct.std::atomic.2"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %258

258:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %258, %while_loop.i
  %259 = add nuw i32 %inductionVariable.0.i, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %call_success
  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %259, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %exitcond.not = icmp eq i32 %inductionVariable.0.i, %smax
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %260 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %261 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
  %262 = bitcast %"class.kotlin::mm::ShadowStack"* %260 to i64*
  store i64 %261, i64* %262, align 8, !tbaa !7
  ret void
}
