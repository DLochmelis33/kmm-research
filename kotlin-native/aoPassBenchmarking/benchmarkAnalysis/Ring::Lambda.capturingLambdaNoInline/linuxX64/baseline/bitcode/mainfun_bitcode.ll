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
  %5 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
  %6 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %7 = bitcast [4 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %8 = bitcast %"class.kotlin::mm::ShadowStack"* %6 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !7
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
  %.sub.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %20, i8 0, i32 32, i1 immarg false) #49
  %21 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %22 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %23 = bitcast %"class.kotlin::mm::ShadowStack"* %21 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !7
  %25 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %26 = bitcast %struct.ObjHeader** %25 to i64*
  store i64 %24, i64* %26, align 8, !tbaa !9
  %27 = bitcast %"class.kotlin::mm::ShadowStack"* %21 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %27, align 8, !tbaa !7
  %28 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %29 = bitcast %struct.ObjHeader** %28 to i32*
  store i32 0, i32* %29, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %22, i64 0, i32 3
  store i32 4, i32* %30, align 4, !tbaa !13
  %31 = load i32, i32* @"state_thread_local$Random", align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %epilogue, label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Random", void ()* nonnull @"kfun:Random.$init_thread_local#internal")
  br label %epilogue

epilogue:                                         ; preds = %label_init.i.i, %Kotlin_mm_safePointFunctionPrologue.exit
  %33 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %34 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %35 = load %struct.ObjHeader*, %struct.ObjHeader** %34, align 8
  store %struct.ObjHeader* %35, %struct.ObjHeader** %33, align 8, !tbaa !3
  %36 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %35, i64 2
  %37 = bitcast %struct.ObjHeader* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %38, 3
  %40 = add i32 %39, 11
  %41 = srem i32 %40, 20
  store i32 %41, i32* %37, align 4
  store i32 %41, i32* @"kvar:globalAddendum#internal", align 4
  %42 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %43 = load i64, i64* %26, align 8, !tbaa !9
  %44 = bitcast %"class.kotlin::mm::ShadowStack"* %42 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20)
  call fastcc void @"kfun:LambdaBenchmark#capturingLambdaNoInline(){}kotlin.Int"()
  %45 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %5, i64 0, i32 1, i32 5
  %46 = load i64, i64* %11, align 8, !tbaa !9
  %47 = bitcast %"class.kotlin::mm::ShadowStack"* %45 to i64*
  store i64 %46, i64* %47, align 8, !tbaa !7
  ret void
}
