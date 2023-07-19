define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %1 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %1, i8 0, i32 32, i1 immarg false) #49
  %2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %3 = alloca %"kclassbody:FibonacciBenchmark#internal", align 8
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:FibonacciBenchmark#internal", %"kclassbody:FibonacciBenchmark#internal"* %3, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:FibonacciBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %4 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %5 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
  %6 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %7 = bitcast %"class.kotlin::mm::ShadowStack"* %5 to i64*
  %8 = load atomic i64, i64* %7 unordered, align 8, !tbaa !7
  %9 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %10 = bitcast %struct.ObjHeader** %9 to i64*
  store i64 %8, i64* %10, align 8, !tbaa !9
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %5 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %11, align 8, !tbaa !7
  %12 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %13 = bitcast %struct.ObjHeader** %12 to i32*
  store i32 0, i32* %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %6, i64 0, i32 3
  store i32 4, i32* %14, align 4, !tbaa !13
  %15 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %Kotlin_mm_safePointFunctionPrologue.exit, label %18

18:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %18, %call_success
  %objHeader = getelementptr inbounds %"kclassbody:FibonacciBenchmark#internal", %"kclassbody:FibonacciBenchmark#internal"* %3, i64 0, i32 0
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %2, align 8, !tbaa !3
  br label %do_while_loop.i

do_while_loop.i:                                  ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %inductionVariable.0.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %23, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %19 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %22

22:                                               ; preds = %do_while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %22, %do_while_loop.i
  %23 = add nuw nsw i32 %inductionVariable.0.i, 1
  %.not.i = icmp eq i32 %inductionVariable.0.i, 9999
  br i1 %.not.i, label %epilogue, label %do_while_loop.i

epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
  %25 = load atomic i64, i64* %10 unordered, align 8, !tbaa !9
  %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !7
  ret void
}
