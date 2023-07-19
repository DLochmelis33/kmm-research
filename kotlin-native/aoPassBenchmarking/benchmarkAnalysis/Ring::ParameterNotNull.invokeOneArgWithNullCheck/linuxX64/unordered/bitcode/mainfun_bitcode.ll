define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [5 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 0
  %1 = bitcast [5 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(40) %1, i8 0, i32 40, i1 immarg false) #49
  %2 = alloca %"kclassbody:ParameterNotNullAssertionBenchmark#internal", align 8
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:ParameterNotNullAssertionBenchmark#internal", %"kclassbody:ParameterNotNullAssertionBenchmark#internal"* %2, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:ParameterNotNullAssertionBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %3 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %4 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %3, i64 0, i32 1, i32 5
  %5 = bitcast [5 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %6 = bitcast %"class.kotlin::mm::ShadowStack"* %4 to i64*
  %7 = load atomic i64, i64* %6 unordered, align 8, !tbaa !7
  %8 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %9 = bitcast %struct.ObjHeader** %8 to i64*
  store i64 %7, i64* %9, align 8, !tbaa !9
  %10 = bitcast %"class.kotlin::mm::ShadowStack"* %4 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %10, align 8, !tbaa !7
  %11 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %12 = bitcast %struct.ObjHeader** %11 to i32*
  store i32 0, i32* %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %5, i64 0, i32 3
  store i32 5, i32* %13, align 4, !tbaa !13
  %14 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %Kotlin_mm_safePointFunctionPrologue.exit, label %17

17:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %17, %entry
  %18 = load atomic i32, i32* @"state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/Main.kt" acquire, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %epilogue, label %call_success

call_success:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::ParameterNotNull.invokeOneArgWithNullCheck/Main.kt", void ()* nonnull @"kfun:$init_global#internal")
  br label %epilogue

epilogue:                                         ; preds = %call_success, %Kotlin_mm_safePointFunctionPrologue.exit
  %objHeader = getelementptr inbounds %"kclassbody:ParameterNotNullAssertionBenchmark#internal", %"kclassbody:ParameterNotNullAssertionBenchmark#internal"* %2, i64 0, i32 0
  %20 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 4
  %21 = getelementptr inbounds [5 x %struct.ObjHeader*], [5 x %struct.ObjHeader*]* %0, i64 0, i64 3
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %21, align 8, !tbaa !3
  %22 = load atomic i64, i64* bitcast (%struct.ObjHeader** @"kvar:OBJ#internal" to i64*) unordered, align 8
  %23 = bitcast %struct.ObjHeader** %20 to i64*
  store i64 %22, i64* %23, align 8, !tbaa !3
  %24 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %3, i64 0, i32 1, i32 5
  %25 = load atomic i64, i64* %9 unordered, align 8, !tbaa !9
  %26 = bitcast %"class.kotlin::mm::ShadowStack"* %24 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !7
  ret void
}
