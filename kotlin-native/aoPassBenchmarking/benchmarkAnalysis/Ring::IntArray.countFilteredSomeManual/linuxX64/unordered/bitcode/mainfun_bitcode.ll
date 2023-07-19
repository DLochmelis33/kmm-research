define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [7 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %2 = alloca [4 x %struct.ObjHeader*], align 8
  %3 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 0
  %4 = bitcast [4 x %struct.ObjHeader*]* %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %4, i8 0, i32 32, i1 immarg false) #49
  %5 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %3, i64 0, i64 3
  %6 = alloca %"kclassbody:IntArrayBenchmark#internal", align 8
  %7 = getelementptr inbounds %"kclassbody:IntArrayBenchmark#internal", %"kclassbody:IntArrayBenchmark#internal"* %6, i64 0, i32 1
  %8 = bitcast %struct.ObjHeader** %7 to i64*
  store i64 0, i64* %8, align 8
  %objHeader = getelementptr inbounds %"kclassbody:IntArrayBenchmark#internal", %"kclassbody:IntArrayBenchmark#internal"* %6, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:IntArrayBenchmark#internal", %"kclassbody:IntArrayBenchmark#internal"* %6, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:IntArrayBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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

23:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %23, %entry
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %5, align 8, !tbaa !3
  %24 = bitcast [7 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %24)
  %.sub.i2 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(56) %24, i8 0, i32 56, i1 immarg false) #49
  %25 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %26 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %27 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 5
  %28 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 6
  %29 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %30 = bitcast [7 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %31 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to i64*
  %32 = load atomic i64, i64* %31 unordered, align 8, !tbaa !7
  %33 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %34 = bitcast %struct.ObjHeader** %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !9
  %35 = bitcast %"class.kotlin::mm::ShadowStack"* %29 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %35, align 8, !tbaa !7
  %36 = getelementptr inbounds [7 x %struct.ObjHeader*], [7 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %37 = bitcast %struct.ObjHeader** %36 to i32*
  store i32 0, i32* %37, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %30, i64 0, i32 3
  store i32 7, i32* %38, align 4, !tbaa !13
  %39 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %40 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %39 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %41 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %40 unordered, align 8, !tbaa !3
  %42 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %41, i64 0, i32 2, i32 1
  %43 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %42, i64 40024) #37
  %44 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 1
  %45 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 2
  %46 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45 to %struct.TypeInfo**
  %47 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false) #37
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:kotlin.IntArray#internal", i64 0, i32 0), %struct.TypeInfo** %46, align 8, !tbaa !16
  %48 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 3
  %49 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %48 to i32*
  store i32 10000, i32* %49, align 8, !tbaa !18
  %50 = bitcast %struct.ObjHeader** %25 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %50, align 8, !tbaa !3
  %51 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 6
  %52 = bitcast %"class.kotlin::gc::GC::ThreadData.34"* %51 to %"class.kotlin::gc::GC::ThreadData::Impl.115"**
  %53 = load atomic %"class.kotlin::gc::GC::ThreadData::Impl.115"*, %"class.kotlin::gc::GC::ThreadData::Impl.115"** %52 unordered, align 8, !tbaa !3
  %54 = getelementptr inbounds %"class.kotlin::gc::GC::ThreadData::Impl.115", %"class.kotlin::gc::GC::ThreadData::Impl.115"* %53, i64 0, i32 2, i32 1
  %55 = call fastcc nonnull align 8 dereferenceable(8) %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* @_ZN6kotlin2mm8internal20ObjectFactoryStorageILm8ENS_2gc15AllocatorWithGCINS3_9AllocatorENS3_22ConcurrentMarkAndSweep10ThreadDataEEEE8Producer6InsertEm(%"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Producer"* nonnull %54, i64 32) #37
  %56 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 1
  %57 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %55, i64 2
  %58 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to %struct.ObjHeader*
  %59 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57 to %struct.TypeInfo**
  %60 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %56 to i64*
  store i64 0, i64* %60, align 8
  store %struct.TypeInfo* getelementptr inbounds ({ %struct.TypeInfo, [5 x i8*] }, { %struct.TypeInfo, [5 x i8*] }* @"ktypeglobal:kotlin.ranges.IntRange#internal", i64 0, i32 0), %struct.TypeInfo** %59, align 8, !tbaa !14
  %61 = bitcast %struct.ObjHeader** %26 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %61, align 8, !tbaa !3
  call fastcc void @"kfun:kotlin.ranges.IntRange#<init>(kotlin.Int;kotlin.Int){}"(%struct.ObjHeader* nonnull %58, i32 10000) #37
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %57, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %61, align 8, !tbaa !3
  %62 = call %struct.ObjHeader* @"kfun:kotlin.ranges.IntProgression#iterator(){}kotlin.collections.IntIterator"(%struct.ObjHeader* nonnull %58, %struct.ObjHeader** nonnull %27)
  %63 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %62, i64 0, i32 0
  %64 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45 to i64*
  %65 = getelementptr inbounds %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node", %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %43, i64 4
  %66 = bitcast %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %65 to i32*
  br label %loop_check.i5

while_loop.i3:                                    ; preds = %loop_check.i5
  %67 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %Kotlin_mm_safePointWhileLoopBody.exit.i4, label %70

70:                                               ; preds = %while_loop.i3
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i4

Kotlin_mm_safePointWhileLoopBody.exit.i4:         ; preds = %70, %while_loop.i3
  %71 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %63 monotonic, align 8
  %72 = ptrtoint %struct.TypeInfo* %71 to i64
  %73 = and i64 %72, -4
  %74 = inttoptr i64 %73 to %struct.TypeInfo*
  %75 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %74, i64 0, i32 0
  %76 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %75 monotonic, align 8
  %77 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %76, i64 0, i32 9
  %78 = load atomic i32, i32* %77 unordered, align 4
  %79 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %76, i64 0, i32 10
  %80 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %79 unordered, align 8
  %81 = and i32 %78, 160
  %82 = zext i32 %81 to i64
  %83 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %80, i64 %82, i32 2
  %84 = load atomic i8**, i8*** %83 unordered, align 8
  %85 = getelementptr i8*, i8** %84, i64 1
  %86 = bitcast i8** %85 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)**
  %87 = load atomic %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*, %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)** %86 unordered, align 8
  %88 = call %struct.ObjHeader* %87(%struct.ObjHeader* nonnull %62, %struct.ObjHeader** nonnull %28)
  %89 = load atomic i32, i32* %49 unordered, align 8, !tbaa !18
  %90 = icmp ugt i32 %89, %index.0.i
  br i1 %90, label %Kotlin_IntArray_set.exit.i, label %91

91:                                               ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i4
  call fastcc void @ThrowArrayIndexOutOfBoundsException() #50
  unreachable

Kotlin_IntArray_set.exit.i:                       ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i4
  %92 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %88, i64 1
  %93 = bitcast %struct.ObjHeader* %92 to i32*
  %94 = load atomic i32, i32* %93 unordered, align 4
  %95 = load atomic volatile i64, i64* %64 monotonic, align 8
  %96 = sext i32 %index.0.i to i64
  %97 = getelementptr inbounds i32, i32* %66, i64 %96
  store i32 %94, i32* %97, align 4, !tbaa !66
  %98 = add i32 %index.0.i, 1
  br label %loop_check.i5

loop_check.i5:                                    ; preds = %Kotlin_IntArray_set.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %index.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %98, %Kotlin_IntArray_set.exit.i ]
  %99 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %63 monotonic, align 8
  %100 = ptrtoint %struct.TypeInfo* %99 to i64
  %101 = and i64 %100, -4
  %102 = inttoptr i64 %101 to %struct.TypeInfo*
  %103 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %102, i64 0, i32 0
  %104 = load atomic %struct.TypeInfo*, %struct.TypeInfo** %103 monotonic, align 8
  %105 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %104, i64 0, i32 9
  %106 = load atomic i32, i32* %105 unordered, align 4
  %107 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %104, i64 0, i32 10
  %108 = load atomic %struct.InterfaceTableRecord*, %struct.InterfaceTableRecord** %107 unordered, align 8
  %109 = and i32 %106, 160
  %110 = zext i32 %109 to i64
  %111 = getelementptr %struct.InterfaceTableRecord, %struct.InterfaceTableRecord* %108, i64 %110, i32 2
  %112 = bitcast i8*** %111 to i1 (%struct.ObjHeader*)***
  %113 = load atomic i1 (%struct.ObjHeader*)**, i1 (%struct.ObjHeader*)*** %112 unordered, align 8
  %114 = load atomic i1 (%struct.ObjHeader*)*, i1 (%struct.ObjHeader*)** %113 unordered, align 8
  %115 = call zeroext i1 %114(%struct.ObjHeader* nonnull %62)
  br i1 %115, label %while_loop.i3, label %call_success

call_success:                                     ; preds = %loop_check.i5
  %116 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %117 = bitcast %struct.ObjHeader* %116 to %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"**
  store %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"* %45, %"class.kotlin::mm::internal::ObjectFactoryStorage<8, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData>>::Node"** %117, align 8, !tbaa !3
  %118 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %119 = load atomic i64, i64* %34 unordered, align 8, !tbaa !9
  %120 = bitcast %"class.kotlin::mm::ShadowStack"* %118 to i64*
  store i64 %119, i64* %120, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %24)
  %121 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %121)
  %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %121, i8 0, i32 32, i1 immarg false) #49
  %122 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %123 = load atomic i64, i64* %120 unordered, align 8, !tbaa !7
  %124 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %125 = bitcast %struct.ObjHeader** %124 to i64*
  store i64 %123, i64* %125, align 8, !tbaa !9
  %126 = bitcast %"class.kotlin::mm::ShadowStack"* %118 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %126, align 8, !tbaa !7
  %127 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %128 = bitcast %struct.ObjHeader** %127 to i32*
  store i32 0, i32* %128, align 8, !tbaa !12
  %129 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %122, i64 0, i32 3
  store i32 4, i32* %129, align 4, !tbaa !13
  %130 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %130)
  %.sub.i.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %130, i8 0, i32 32, i1 immarg false) #49
  %131 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %132 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %133 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %134 = bitcast %"class.kotlin::mm::ShadowStack"* %132 to i64*
  %135 = load atomic i64, i64* %134 unordered, align 8, !tbaa !7
  %136 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %137 = bitcast %struct.ObjHeader** %136 to i64*
  store i64 %135, i64* %137, align 8, !tbaa !9
  %138 = bitcast %"class.kotlin::mm::ShadowStack"* %132 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %138, align 8, !tbaa !7
  %139 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %140 = bitcast %struct.ObjHeader** %139 to i32*
  store i32 0, i32* %140, align 8, !tbaa !12
  %141 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %133, i64 0, i32 3
  store i32 4, i32* %141, align 4, !tbaa !13
  %142 = bitcast %struct.ObjHeader* %116 to %struct.ObjHeader**
  %143 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %142 unordered, align 8
  store %struct.ObjHeader* %143, %struct.ObjHeader** %131, align 8, !tbaa !3
  %144 = icmp eq %struct.ObjHeader* %143, null
  br i1 %144, label %when_case.i1.i, label %"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i"

when_case.i1.i:                                   ; preds = %call_success
  call fastcc void @ThrowNullPointerException() #50
  unreachable

"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i": ; preds = %call_success
  %145 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
  store %struct.ObjHeader* %143, %struct.ObjHeader** %145, align 8, !tbaa !3
  %146 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %147 = load atomic i64, i64* %137 unordered, align 8, !tbaa !9
  %148 = bitcast %"class.kotlin::mm::ShadowStack"* %146 to i64*
  store i64 %147, i64* %148, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %130)
  %149 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %143, i64 1
  %150 = bitcast %struct.ObjHeader* %149 to i32*
  %151 = load atomic i32, i32* %150 unordered, align 8, !tbaa !18
  %152 = icmp sgt i32 %151, 0
  %smax = select i1 %152, i32 %151, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %153 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %156

156:                                              ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %156, %while_loop.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %loop_check.i

loop_check.i:                                     ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %Kotlin_mm_safePointWhileLoopBody.exit.i ], [ 0, %"kfun:IntArrayBenchmark#<get-data>(){}kotlin.IntArray.exit.i" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %157 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %9, i64 0, i32 1, i32 5
  %158 = bitcast %"class.kotlin::mm::ShadowStack"* %157 to i64*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %121)
  %159 = load atomic i64, i64* %15 unordered, align 8, !tbaa !9
  store i64 %159, i64* %158, align 8, !tbaa !7
  ret void
}
