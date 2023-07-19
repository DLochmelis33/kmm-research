define internal fastcc void @"kfun:#main(){}"() unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
epilogue:
  %0 = load atomic i8, i8* getelementptr inbounds (%"struct.std::atomic_flag", %"struct.std::atomic_flag"* @_ZN6kotlin2mm8internal20gSuspensionRequestedE, i64 0, i32 0, i32 0) seq_cst, align 1
  %1 = and i8 %0, 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %Kotlin_mm_safePointFunctionPrologue.exit, label %3

3:                                                ; preds = %epilogue
  tail call fastcc void @_ZN6kotlin2mm26SuspendIfRequestedSlowPathEv() #37
  br label %Kotlin_mm_safePointFunctionPrologue.exit

Kotlin_mm_safePointFunctionPrologue.exit:         ; preds = %3, %epilogue
  tail call fastcc void @"kfun:#octoTest(){}"()
  ret void
}
