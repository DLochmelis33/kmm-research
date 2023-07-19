define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
call_success:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:InlineBenchmark#internal", align 8
  %5 = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %4, i64 0, i32 1
  %6 = bitcast i32* %5 to i64*
  store i64 0, i64* %6, align 8
  %objHeader = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %4, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:InlineBenchmark#internal", %"kclassbody:InlineBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:InlineBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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
  %18 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %Kotlin_mm_safePointFunctionPrologue.exit, label %21

21:                                               ; preds = %call_success
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %21, %call_success
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %22 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %23 = bitcast %struct.ObjHeader* %22 to i32*
  store i32 2138476523, i32* %23, align 8
  %24 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24)
  %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %24, i8 0, i32 32, i1 immarg false) #49
  %25 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %26 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %27 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %28 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to i64*
  %29 = load atomic i64, i64* %28 unordered, align 8, !tbaa !7
  %30 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %31 = bitcast %struct.ObjHeader** %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !9
  %32 = bitcast %"class.kotlin::mm::ShadowStack"* %26 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %32, align 8, !tbaa !7
  %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %34 = bitcast %struct.ObjHeader** %33 to i32*
  store i32 0, i32* %34, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %27, i64 0, i32 3
  store i32 4, i32* %35, align 4, !tbaa !13
  %36 = load atomic i32, i32* %23 unordered, align 8
  %37 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %36, %struct.ObjHeader** nonnull %25) #37
  br label %do_while_loop.i.i

do_while_loop.i.i:                                ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %inductionVariable.0.i.i = phi i32 [ 0, %Kotlin_mm_safePointFunctionPrologue.exit ], [ %42, %Kotlin_mm_safePointWhileLoopBody.exit.i.i ]
  %38 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %Kotlin_mm_safePointWhileLoopBody.exit.i.i, label %41

41:                                               ; preds = %do_while_loop.i.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i.i

Kotlin_mm_safePointWhileLoopBody.exit.i.i:        ; preds = %41, %do_while_loop.i.i
  %42 = add nuw nsw i32 %inductionVariable.0.i.i, 1
  %.not.i.i = icmp eq i32 %inductionVariable.0.i.i, 10000
  br i1 %.not.i.i, label %epilogue, label %do_while_loop.i.i

epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i.i
  %43 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %7, i64 0, i32 1, i32 5
  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to i64*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24)
  %45 = load atomic i64, i64* %13 unordered, align 8, !tbaa !9
  store i64 %45, i64* %44, align 8, !tbaa !7
  ret void
}
