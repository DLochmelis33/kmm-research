--- ../../benchmarkAnalysis/Ring::Switch.testObjConstSwitch/linuxX64/baseline/bitcode/mainfun_bitcode.ll	2023-07-19 02:48:43.180627694 +0200
+++ ../../benchmarkAnalysis/Ring::Switch.testObjConstSwitch/linuxX64/unordered/bitcode/mainfun_bitcode.ll	2023-07-19 03:00:30.910405838 +0200
@@ -14,11 +14,11 @@
   %objHeader = getelementptr inbounds %"kclassbody:SwitchBenchmark#internal", %"kclassbody:SwitchBenchmark#internal"* %5, i64 0, i32 0
   %typeInfoOrMeta_ = getelementptr inbounds %"kclassbody:SwitchBenchmark#internal", %"kclassbody:SwitchBenchmark#internal"* %5, i64 0, i32 0, i32 0
   store %struct.TypeInfo* inttoptr (i64 or (i64 ptrtoint ({ %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:SwitchBenchmark#internal" to i64), i64 3) to %struct.TypeInfo*), %struct.TypeInfo** %typeInfoOrMeta_, align 8
-  %8 = load %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E, align 8, !tbaa !3
+  %8 = load atomic %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"*, %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"** @_ZN6kotlin2mm14ThreadRegistry22currentThreadDataNode_E unordered, align 8, !tbaa !3
   %9 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %10 = bitcast [4 x %struct.ObjHeader*]* %2 to %struct.FrameOverlay.6*
   %11 = bitcast %"class.kotlin::mm::ShadowStack"* %9 to i64*
-  %12 = load i64, i64* %11, align 8, !tbaa !7
+  %12 = load atomic i64, i64* %11 unordered, align 8, !tbaa !7
   %13 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %2, i64 0, i64 1
   %14 = bitcast %struct.ObjHeader** %13 to i64*
   store i64 %12, i64* %14, align 8, !tbaa !9
@@ -58,7 +58,7 @@
   %28 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %29 = bitcast [6 x %struct.ObjHeader*]* %1 to %struct.FrameOverlay.6*
   %30 = bitcast %"class.kotlin::mm::ShadowStack"* %28 to i64*
-  %31 = load i64, i64* %30, align 8, !tbaa !7
+  %31 = load atomic i64, i64* %30 unordered, align 8, !tbaa !7
   %32 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 1
   %33 = bitcast %struct.ObjHeader** %32 to i64*
   store i64 %31, i64* %33, align 8, !tbaa !9
@@ -77,7 +77,7 @@
   %40 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %41 = bitcast [4 x %struct.ObjHeader*]* %0 to %struct.FrameOverlay.6*
   %42 = bitcast %"class.kotlin::mm::ShadowStack"* %40 to i64*
-  %43 = load i64, i64* %42, align 8, !tbaa !7
+  %43 = load atomic i64, i64* %42 unordered, align 8, !tbaa !7
   %44 = getelementptr inbounds [4 x %struct.ObjHeader*], [4 x %struct.ObjHeader*]* %0, i64 0, i64 1
   %45 = bitcast %struct.ObjHeader** %44 to i64*
   store i64 %43, i64* %45, align 8, !tbaa !9
@@ -90,7 +90,7 @@
   store i32 4, i32* %49, align 4, !tbaa !13
   %50 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %objHeader, i64 1
   %51 = bitcast %struct.ObjHeader* %50 to %struct.ObjHeader**
-  %52 = load %struct.ObjHeader*, %struct.ObjHeader** %51, align 8
+  %52 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %51 unordered, align 8
   store %struct.ObjHeader* %52, %struct.ObjHeader** %39, align 8, !tbaa !3
   %.not.i.i = icmp eq %struct.ObjHeader* %52, null
   br i1 %.not.i.i, label %when_next.i.i, label %"kfun:SwitchBenchmark#<get-denseIntData>(){}kotlin.IntArray.exit.i"
@@ -103,13 +103,13 @@
   %53 = getelementptr inbounds [6 x %struct.ObjHeader*], [6 x %struct.ObjHeader*]* %1, i64 0, i64 3
   store %struct.ObjHeader* %52, %struct.ObjHeader** %53, align 8, !tbaa !3
   %54 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
-  %55 = load i64, i64* %45, align 8, !tbaa !9
+  %55 = load atomic i64, i64* %45 unordered, align 8, !tbaa !9
   %56 = bitcast %"class.kotlin::mm::ShadowStack"* %54 to i64*
   store i64 %55, i64* %56, align 8, !tbaa !7
   call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %38)
   %57 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %52, i64 1
   %58 = bitcast %struct.ObjHeader* %57 to i32*
-  %59 = load i32, i32* %58, align 8, !tbaa !18
+  %59 = load atomic i32, i32* %58 unordered, align 8, !tbaa !18
   %60 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %52, i64 2
   %61 = bitcast %struct.ObjHeader* %60 to i32*
   %62 = icmp sgt i32 %59, 0
@@ -129,9 +129,9 @@
 
 Kotlin_mm_safePointWhileLoopBody.exit.i:          ; preds = %66, %while_loop.i
   %67 = getelementptr inbounds i32, i32* %61, i64 %indvars.iv
-  %68 = load i32, i32* %67, align 4, !tbaa !73
+  %68 = load atomic i32, i32* %67 unordered, align 4, !tbaa !71
   %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
-  %69 = load i32, i32* @"state_thread_local$Blackhole", align 4
+  %69 = load atomic i32, i32* @"state_thread_local$Blackhole" unordered, align 4
   %70 = icmp eq i32 %69, 2
   br i1 %70, label %"kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i", label %label_init.i.i
 
@@ -141,7 +141,7 @@
 
 "kfun:Blackhole#<get-$companion>#static(){}Blackhole.Companion.exit.i": ; preds = %label_init.i.i, %Kotlin_mm_safePointWhileLoopBody.exit.i
   %71 = call fastcc %struct.ObjHeader** @LookupTLS(i32 3) #37
-  %72 = load %struct.ObjHeader*, %struct.ObjHeader** %71, align 8
+  %72 = load atomic %struct.ObjHeader*, %struct.ObjHeader** %71 unordered, align 8
   store %struct.ObjHeader* %72, %struct.ObjHeader** %26, align 8, !tbaa !3
   switch i32 %68, label %when_next38.i.i [
     i32 1, label %"kfun:SwitchBenchmark#objConstSwitch(kotlin.Int){}kotlin.Int.exit.i"
@@ -213,10 +213,10 @@
   %73 = call fastcc %struct.ObjHeader* @"kfun:kotlin#<Int-box>(kotlin.Int){}kotlin.Any"(i32 %t.0.i.i, %struct.ObjHeader** nonnull %27)
   %74 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %72, i64 1
   %75 = bitcast %struct.ObjHeader* %74 to i32*
-  %76 = load i32, i32* %75, align 4
+  %76 = load atomic i32, i32* %75 unordered, align 4
   %77 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %73, i64 1
   %78 = bitcast %struct.ObjHeader* %77 to i32*
-  %79 = load i32, i32* %78, align 4
+  %79 = load atomic i32, i32* %78 unordered, align 4
   %80 = add i32 %76, %79
   store i32 %80, i32* %75, align 4
   br label %loop_check.i
@@ -230,7 +230,7 @@
   %81 = getelementptr inbounds %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node", %"class.kotlin::SingleLockList<kotlin::mm::ThreadData, std::recursive_mutex, kotlin::std_support::allocator<kotlin::mm::ThreadData>>::Node"* %8, i64 0, i32 1, i32 5
   %82 = bitcast %"class.kotlin::mm::ShadowStack"* %81 to i64*
   call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %25)
-  %83 = load i64, i64* %14, align 8, !tbaa !9
+  %83 = load atomic i64, i64* %14 unordered, align 8, !tbaa !9
   store i64 %83, i64* %82, align 8, !tbaa !7
   ret void
 }
