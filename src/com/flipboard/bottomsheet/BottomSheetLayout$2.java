package com.flipboard.bottomsheet;

import android.animation.Animator;

class BottomSheetLayout$2
  extends BottomSheetLayout.a
{
  BottomSheetLayout$2(BottomSheetLayout paramBottomSheetLayout)
  {
    super(paramBottomSheetLayout, null);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!c) {
      BottomSheetLayout.a(a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.BottomSheetLayout.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */