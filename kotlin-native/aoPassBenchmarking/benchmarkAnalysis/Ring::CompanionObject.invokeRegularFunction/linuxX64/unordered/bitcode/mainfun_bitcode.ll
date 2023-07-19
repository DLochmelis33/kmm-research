define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
epilogue:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:CompanionObjectBenchmark#internal", align 8
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:CompanionObjectBenchmark#internal", %"kclassbody:CompanionObjectBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:CompanionObjectBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %5 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %6 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %7 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %8 = bitcast %"class.kotlin::mm::ShadowStack"* %6 to i64*
  %9 = load atomic i64, i64* %8 unordered, align 8, !tbaa !7
  %10 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %11 = bitcast %struct.ObjHeader** %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !9
  %12 = bitcast %"class.kotlin::mm::ShadowStack"* %6 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %12, align 8, !tbaa !7
  %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %14 = bitcast %struct.ObjHeader** %13 to i32*
  store i32 0, i32* %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %7, i64 0, i32 3
  store i32 4, i32* %15, align 4, !tbaa !13
  %16 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %Kotlin_mm_safePointFunctionPrologue.exit, label %19

19:                                               ; preds = %epilogue
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %19, %epilogue
  %objHeader = getelementptr inbounds %"kclassbody:CompanionObjectBenchmark#internal", %"kclassbody:CompanionObjectBenchmark#internal"* %4, i64 0, i32 0
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %20 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20)
  %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %20, i8 0, i32 32, i1 immarg false) #49
  %21 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %22 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %23 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %24 = bitcast %"class.kotlin::mm::ShadowStack"* %22 to i64*
  %25 = load atomic i64, i64* %24 unordered, align 8, !tbaa !7
  %26 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %27 = bitcast %struct.ObjHeader** %26 to i64*
  store i64 %25, i64* %27, align 8, !tbaa !9
  %28 = bitcast %"class.kotlin::mm::ShadowStack"* %22 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %28, align 8, !tbaa !7
  %29 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %30 = bitcast %struct.ObjHeader** %29 to i32*
  store i32 0, i32* %30, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %23, i64 0, i32 3
  store i32 4, i32* %31, align 4, !tbaa !13
  store %struct.ObjHeader* bitcast ({ %struct.ArrayHeader, [0 x i8] }* @99 to %struct.ObjHeader*), %struct.ObjHeader** %21, align 8, !tbaa !3
  %32 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %33 = bitcast %"class.kotlin::mm::ShadowStack"* %32 to i64*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
  %34 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
  store i64 %34, i64* %33, align 8, !tbaa !7
  ret void
}
