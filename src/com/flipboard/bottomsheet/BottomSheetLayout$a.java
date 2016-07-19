package com.flipboard.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class BottomSheetLayout$a
  extends AnimatorListenerAdapter
{
  protected boolean c;
  
  private BottomSheetLayout$a(BottomSheetLayout paramBottomSheetLayout) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    c = true;
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.BottomSheetLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */