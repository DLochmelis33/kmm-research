define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %1 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %1, i8 0, i32 32, i1 immarg false) #49
  %2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %3 = alloca %"kclassbody:EulerBenchmark#internal", align 8
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:EulerBenchmark#internal", %"kclassbody:EulerBenchmark#internal"* %3, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:EulerBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
  %objHeader = getelementptr inbounds %"kclassbody:EulerBenchmark#internal", %"kclassbody:EulerBenchmark#internal"* %3, i64 0, i32 0
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %2, align 8, !tbaa !3
  br label %do_while_loop.i

do_while_loop.i:                                  ; preds = %when_exit11.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %when_exit11.i ], [ 3333, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %when_exit11.i ], [ 6667, %Kotlin_mm_safePointFunctionPrologue.exit ]
  %19 = lshr i64 %indvars.iv, 1
  %20 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %23

23:                                               ; preds = %do_while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %23, %do_while_loop.i
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %24 = mul nsw i64 %indvars.iv5, %indvars.iv5
  %25 = trunc i64 %indvars.iv5 to i32
  %26 = sub i32 10000, %25
  %.udiv = lshr i32 %26, 1
  %27 = add nsw i64 %indvars.iv5, -1
  %28 = zext i32 %.udiv to i64
  %.not.i = icmp ult i64 %27, %28
  br i1 %.not.i, label %when_exit11.i, label %do_while_loop14.i

do_while_loop14.i:                                ; preds = %loop_check13.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %loop_check13.i ], [ %19, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %inductionVariable9.0.i = phi i32 [ %33, %loop_check13.i ], [ %.udiv, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %29 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %Kotlin_mm_safePointWhileLoopBody.exit4.i, label %32

32:                                               ; preds = %do_while_loop14.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit4.i

Kotlin_mm_safePointWhileLoopBody.exit4.i:         ; preds = %32, %do_while_loop14.i
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %33 = add nuw nsw i32 %inductionVariable9.0.i, 1
  %34 = trunc i64 %indvars.iv5 to i32
  %35 = add i32 %inductionVariable9.0.i, %34
  %36 = icmp ugt i32 %35, 9999
  br i1 %36, label %when_exit11.i, label %when_exit16.i

when_exit16.i:                                    ; preds = %Kotlin_mm_safePointWhileLoopBody.exit4.i
  %37 = sub nsw i32 10000, %inductionVariable9.0.i
  %38 = trunc i64 %indvars.iv5 to i32
  %39 = sub i32 %37, %38
  %40 = sext i32 %39 to i64
  %.not2.i = icmp sgt i64 %indvars.iv3, %40
  br i1 %.not2.i, label %when_exit18.i, label %loop_check13.i

when_exit18.i:                                    ; preds = %when_exit16.i
  %41 = mul nsw i64 %indvars.iv3, %indvars.iv3
  %42 = sext i32 %39 to i64
  %43 = mul nsw i64 %42, %42
  %44 = add nuw i64 %41, %43
  %45 = icmp eq i64 %24, %44
  br i1 %45, label %epilogue, label %loop_check13.i

loop_check13.i:                                   ; preds = %when_exit18.i, %when_exit16.i
  %.not3.i = icmp eq i64 %indvars.iv3, %27
  br i1 %.not3.i, label %when_exit11.i, label %do_while_loop14.i

when_exit11.i:                                    ; preds = %loop_check13.i, %Kotlin_mm_safePointWhileLoopBody.exit4.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %.not1.i = icmp eq i64 %indvars.iv5, 9997
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not1.i, label %epilogue, label %do_while_loop.i

epilogue:                                         ; preds = %when_exit11.i, %when_exit18.i
  %46 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %4, i64 0, i32 1, i32 5
  %47 = load atomic i64, i64* %10 unordered, align 8, !tbaa !9
  %48 = bitcast %"class.kotlin::mm::ShadowStack"* %46 to i64*
  store i64 %47, i64* %48, align 8, !tbaa !7
  ret void
}
