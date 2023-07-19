define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %1 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %1, i8 0, i32 32, i1 immarg false) #49
  %2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %3 = alloca %"kclassbody:InlineBenchmark#internal", align 8
  %4 = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %3, i64 0, i32 1
  %5 = bitcast i32* %4 to i64*
  store i64 0, i64* %5, align 8
  %objHeader = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %3, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %3, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:InlineBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %6 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %7 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %6, i64 0, i32 1, i32 5
  %8 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %9 = bitcast %"class.kotlin::mm::ShadowStack"* %7 to i64*
  %10 = load atomic i64, i64* %9 unordered, align 8, !tbaa !7
  %11 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %12 = bitcast %struct.ObjHeader** %11 to i64*
  store i64 %10, i64* %12, align 8, !tbaa !9
  %13 = bitcast %"class.kotlin::mm::ShadowStack"* %7 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %13, align 8, !tbaa !7
  %14 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %15 = bitcast %struct.ObjHeader** %14 to i32*
  store i32 0, i32* %15, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %8, i64 0, i32 3
  store i32 4, i32* %16, align 4, !tbaa !13
  %17 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %Kotlin_mm_safePointFunctionPrologue.exit, label %20

20:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %20, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %2, align 8, !tbaa !3
  %21 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %22 = bitcast %struct.ObjHeader* %21 to i32*
  store i32 2138476523, i32* %22, align 8
  br label %do_while_loop.i.i

do_while_loop.i.i:                                ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %inductionVariable.0.i.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %27, %Kotlin_mm_safePointWhileLoopBody.exit.i.i ]
  %23 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %26

26:                                               ; preds = %do_while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %26, %do_while_loop.i.i
  %27 = add nuw nsw i32 %inductionVariable.0.i.i, 1
  %.not.i.i = icmp eq i32 %inductionVariable.0.i.i, 10000
  br i1 %.not.i.i, label %epilogue, label %do_while_loop.i.i

epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %28 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %6, i64 0, i32 1, i32 5
  %29 = load atomic i64, i64* %12 unordered, align 8, !tbaa !9
  %30 = bitcast %"class.kotlin::mm::ShadowStack"* %28 to i64*
  store i64 %29, i64* %30, align 8, !tbaa !7
  ret void
}
