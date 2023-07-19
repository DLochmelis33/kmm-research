define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = alloca [4 x %struct.ObjHeader*], align 8
  %1 = alloca [6 x %struct.ObjHeader*], align 8
  %2 = alloca [4 x %struct.ObjHeader*], align 8
  %.sub = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 0
  %3 = bitcast [4 x %struct.ObjHeader*]* %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %3, i8 0, i32 32, i1 immarg false) #49
  %4 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 3
  %5 = alloca %"kclassbody:SwitchBenchmark#internal", align 8
  %6 = getelementptr inbounds %"kclassbody:SwitchBenchmark#internal", %"kclassbody:SwitchBenchmark#internal"* %5, i64 0, i32 1
  %7 = bitcast %struct.ObjHeader** %6 to i64*
  store i64 0, i64* %7, align 8
  %objHeader = getelementptr inbounds %"kclassbody:SwitchBenchmark#internal", %"kclassbody:SwitchBenchmark#internal"* %5, i64 0, i32 0
  %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:SwitchBenchmark#internal", %"kclassbody:SwitchBenchmark#internal"* %5, i64 0, i32 0, i32 0
  store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:SwitchBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
  %8 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
  %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %10 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
  %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
  %12 = load atomic i64, i64* %11 unordered, align 8, !tbaa !7
  %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
  %14 = bitcast %struct.ObjHeader** %13 to i64*
  store i64 %12, i64* %14, align 8, !tbaa !9
  %15 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub, %struct.ObjHeader*** %15, align 8, !tbaa !7
  %16 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 2
  %17 = bitcast %struct.ObjHeader** %16 to i32*
  store i32 0, i32* %17, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %10, i64 0, i32 3
  store i32 4, i32* %18, align 4, !tbaa !13
  %19 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %Kotlin_mm_safePointFunctionPrologue.exit, label %22

22:                                               ; preds = %entry
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %22, %entry
  %23 = load atomic i32, i32* @"state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testConstSwitch/Main.kt" acquire, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %call_success1, label %call_success

call_success:                                     ; preds = %Kotlin_mm_safePointFunctionPrologue.exit
  call fastcc void @CallInitGlobalPossiblyLock(i32* nonnull @"state_global$<root>$/home/loewe/tabs/kmm-research/kotlin-native/aoPassBenchmarking/benchmarkAnalysis/Ring::Switch.testConstSwitch/Main.kt", void ()* nonnull @"kfun:$init_global#internal")
  br label %call_success1

call_success1:                                    ; preds = %call_success, %Kotlin_mm_safePointFunctionPrologue.exit
  store %struct.ObjHeader* %objHeader, %struct.ObjHeader** %4, align 8, !tbaa !3
  %25 = bitcast [6 x %struct.ObjHeader*]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %25)
  %.sub.i = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(48) %25, i8 0, i32 48, i1 immarg false) #49
  %26 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 4
  %27 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 5
  %28 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %29 = bitcast [6 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
  %30 = bitcast %"class.kotlin::mm::ShadowStack"* %28 to i64*
  %31 = load atomic i64, i64* %30 unordered, align 8, !tbaa !7
  %32 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 1
  %33 = bitcast %struct.ObjHeader** %32 to i64*
  store i64 %31, i64* %33, align 8, !tbaa !9
  %34 = bitcast %"class.kotlin::mm::ShadowStack"* %28 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i, %struct.ObjHeader*** %34, align 8, !tbaa !7
  %35 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 2
  %36 = bitcast %struct.ObjHeader** %35 to i32*
  store i32 0, i32* %36, align 8, !tbaa !12
  %37 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %29, i64 0, i32 3
  store i32 6, i32* %37, align 4, !tbaa !13
  %38 = bitcast [4 x %struct.ObjHeader*]* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %38)
  %.sub.i.i = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 0
  call void @llvm.memset.p0i8.i32(i8* nocapture nonnull writeonly align 8 dereferenceable(32) %38, i8 0, i32 32, i1 immarg false) #49
  %39 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 3
  %40 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %41 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
  %42 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to i64*
  %43 = load atomic i64, i64* %42 unordered, align 8, !tbaa !7
  %44 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
  %45 = bitcast %struct.ObjHeader** %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !9
  %46 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to %struct.ObjHeader***
  store %struct.ObjHeader** %.sub.i.i, %struct.ObjHeader*** %46, align 8, !tbaa !7
  %47 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 2
  %48 = bitcast %struct.ObjHeader** %47 to i32*
  store i32 0, i32* %48, align 8, !tbaa !12
  %49 = getelementptr inbounds %struct.FrameOverlay.6, %struct.FrameOverlay.6* %41, i64 0, i32 3
  store i32 4, i32* %49, align 4, !tbaa !13
  %50 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
  %51 = bitcast %struct.ObjHeader* %50 to %struct.ObjHeader**
  %52 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %51 unordered, align 8
  store %struct.ObjHeader* %52, %struct.ObjHeader** %39, align 8, !tbaa !3
  %.not.i.i = icmp eq %struct.ObjHeader* %52, null
  br i1 %.not.i.i, label %when_next.i.i, label %"kfun:SwitchBenchmark#<get-denseIntData>(){}kotlin.IntArray.exit.i"

when_next.i.i:                                    ; preds = %call_success1
  call fastcc void @"kfun:kotlin.native.internal#ThrowUninitializedPropertyAccessException(kotlin.String){}kotlin.Nothing"() #50
  unreachable

"kfun:SwitchBenchmark#<get-denseIntData>(){}kotlin.IntArray.exit.i": ; preds = %call_success1
  %53 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 3
  store %struct.ObjHeader* %52, %struct.ObjHeader** %53, align 8, !tbaa !3
  %54 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %55 = load atomic i64, i64* %45 unordered, align 8, !tbaa !9
  %56 = bitcast %"class.kotlin::mm::ShadowStack"* %54 to i64*
  store i64 %55, i64* %56, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %38)
  %57 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %52, i64 1
  %58 = bitcast %struct.ObjHeader* %57 to i32*
  %59 = load atomic i32, i32* %58 unordered, align 8, !tbaa !18
  %60 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %52, i64 2
  %61 = bitcast %struct.ObjHeader* %60 to i32*
  %62 = icmp sgt i32 %59, 0
  %smax = select i1 %62, i32 %59, i32 0
  %wide.trip.count = zext i32 %smax to i64
  br label %loop_check.i

while_loop.i:                                     ; preds = %loop_check.i
  %63 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %Kotlin_mm_safePointWhileLoopBody.exit.i, label %66

66:                                               ; preds = %while_loop.i
  call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointWhileLoopBody.exit.i

Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %66, %while_loop.i
  %67 = getelementptr inbounds i32, i32* %61, i64 %indvars.iv
  %68 = load atomic i32, i32* %67 unordered, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %69 = load atomic i32, i32* @"state_thread_local$Blackhole" unordered, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i

label_init.i.i:                                   ; preds = %Kotlin_mm_safePointWhileLoopBody.exit.i
  call fastcc void @CallInitThreadLocal(i32* nonnull @"state_thread_local$Blackhole", void ()* nonnull @"kfun:Blackhole.$init_thread_local#internal")
  br label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"

"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
  %71 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
  %72 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %71 unordered, align 8
  store %struct.ObjHeader* %72, %struct.ObjHeader** %26, align 8, !tbaa !3
  switch i32 %68, label %when_next38.i.i [
    i32 1, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 2, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split"
    i32 3, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split3"
    i32 4, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split4"
    i32 5, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split5"
    i32 6, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split6"
    i32 7, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 8, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split7"
    i32 9, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 10, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split8"
    i32 11, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split9"
    i32 12, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split10"
    i32 13, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split11"
    i32 14, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split12"
    i32 15, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split13"
    i32 16, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split14"
    i32 17, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 18, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 19, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
    i32 20, label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"
  ]

when_next38.i.i:                                  ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split3": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split4": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split5": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split6": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split7": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split8": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split9": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split10": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split11": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split12": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split13": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split14": ; preds = %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  br label %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i"

"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i": ; preds = %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split14", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split13", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split12", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split11", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split10", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split9", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split8", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split7", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split6", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split5", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split4", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split3", %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split", %when_next38.i.i, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i"
  %t.0.i.i = phi i32 [ 5, %when_next38.i.i ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 3, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split" ], [ 4, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split3" ], [ 5, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split4" ], [ 6, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split5" ], [ 7, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split6" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 9, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split7" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 2, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split8" ], [ 3, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split9" ], [ 4, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split10" ], [ 4, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split11" ], [ 4, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split12" ], [ 435, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split13" ], [ 31, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i.fold.split14" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ], [ 1, %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i" ]
  %73 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %t.0.i.i, %struct.ObjHeader** nonnull %27)
  %74 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %72, i64 1
  %75 = bitcast %struct.ObjHeader* %74 to i32*
  %76 = load atomic i32, i32* %75 unordered, align 4
  %77 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %73, i64 1
  %78 = bitcast %struct.ObjHeader* %77 to i32*
  %79 = load atomic i32, i32* %78 unordered, align 4
  %80 = add i32 %76, %79
  store i32 %80, i32* %75, align 4
  br label %loop_check.i

loop_check.i:                                     ; preds = %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i", %"kfun:SwitchBenchmark#<get-denseIntData>(){}kotlin.IntArray.exit.i"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"kfun:SwitchBenchmark#constSwitch(kotlin.Int){}kotlin.Int.exit.i" ], [ 0, %"kfun:SwitchBenchmark#<get-denseIntData>(){}kotlin.IntArray.exit.i" ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %epilogue, label %while_loop.i

epilogue:                                         ; preds = %loop_check.i
  %81 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
  %82 = bitcast %"class.kotlin::mm::ShadowStack"* %81 to i64*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %25)
  %83 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
  store i64 %83, i64* %82, align 8, !tbaa !7
  ret void
}
