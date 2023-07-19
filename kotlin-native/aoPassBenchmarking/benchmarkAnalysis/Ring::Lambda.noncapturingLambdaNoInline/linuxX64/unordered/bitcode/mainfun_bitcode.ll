define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 0
  %2 = bitcast [4 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %2, i8 0, i32 32, i1 immarg false) #49
  %3 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %1, i64 0, i64 3
  %4 = alloca %"kclassbody:LambdaBenchmark#internal", align 8
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:LambdaBenchmark#internal", %"kclassbody:LambdaBenchmark#internal"* %4, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:LambdaBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
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

19:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %19, %entry
  %objHeader = getelementptr inbounds %"kclassbody:LambdaBenchmark#internal", %"kclassbody:LambdaBenchmark#internal"* %4, i64 0, i32 0
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %3, align 8, !tbaa !3
  %20 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20)
  %.sub.i2 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
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
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %28, align 8, !tbaa !7
  %29 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %30 = bitcast %struct.ObjHeader** %29 to i32*
  store i32 0, i32* %30, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %23, i64 0, i32 3
  store i32 4, i32* %31, align 4, !tbaa !13
  %32 = load atomic i32, i32* @"state_thread_local$Random" unordered, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %call_success, label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Random", void ()* nonnull @"kfun:Random.$init_thread_local#internal")
  br label %call_success

call_success:                                     ; preds = %label_init.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %34 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %35 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %34 unordered, align 8
  store %struct.ObjHeader* %35, %struct.ObjHeader** %21, align 8, !tbaa !3
  %36 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %35, i64 2
  %37 = bitcast %struct.ObjHeader* %36 to i32*
  %38 = load atomic i32, i32* %37 unordered, align 4
  %39 = mul i32 %38, 3
  %40 = add i32 %39, 11
  %41 = srem i32 %40, 20
  store i32 %41, i32* %37, align 4
  %42 = load atomic i32, i32* %37 unordered, align 4
  store i32 %42, i32* @"kvar:globalAddendum#internal", align 4
  %43 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %44 = load atomic i64, i64* %27 unordered, align 8, !tbaa !9
  %45 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to i64*
  store i64 %44, i64* %45, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20)
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %20, i8 0, i32 32, i1 immarg false) #49
  %46 = load atomic i64, i64* %45 unordered, align 8, !tbaa !7
  store i64 %46, i64* %27, align 8, !tbaa !9
  %47 = bitcast %"class.kotlin::mm::ShadowStack"* %43 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i2, %struct.ObjHeader*** %47, align 8, !tbaa !7
  store i32 0, i32* %30, align 8, !tbaa !12
  store i32 4, i32* %31, align 4, !tbaa !13
  br label %do_while_loop.i

do_while_loop.i:                                  ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i, %call_success
  %inductionVariable.0.i = phi i32 [ 0, %call_success ], [ %52, %Kotlin_mm_safePointWhileLoopBody.exit.i ]
  %48 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %51

51:                                               ; preds = %do_while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %51, %do_while_loop.i
  %52 = add nuw nsw i32 %inductionVariable.0.i, 1
  %53 = load atomic i32, i32* @"kvar:globalAddendum#internal" unordered, align 4
  %54 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %53, %struct.ObjHeader** nonnull %21) #37
  store %struct.ObjHeader* %54, %struct.ObjHeader** %21, align 8, !tbaa !3
  %.not.i = icmp eq i32 %inductionVariable.0.i, 10000
  br i1 %.not.i, label %epilogue, label %do_while_loop.i

epilogue:                                         ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  %55 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %56 = bitcast %"class.kotlin::mm::ShadowStack"* %55 to i64*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
  %57 = load atomic i64, i64* %11 unordered, align 8, !tbaa !9
  store i64 %57, i64* %56, align 8, !tbaa !7
  ret void
}
