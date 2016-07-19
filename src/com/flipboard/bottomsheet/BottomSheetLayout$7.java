package com.flipboard.bottomsheet;

import android.animation.Animator;
import android.view.View;

class BottomSheetLayout$7
  extends BottomSheetLayout.a
{
  BottomSheetLayout$7(BottomSheetLayout paramBottomSheetLayout, View paramView)
  {
    super(paramBottomSheetLayout, null);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!c)
    {
      BottomSheetLayout.a(b, null);
      BottomSheetLayout.a(b, BottomSheetLayout.State.HIDDEN);
      BottomSheetLayout.b(b, 0);
      b.removeView(a);
      if (BottomSheetLayout.d(b) != null) {
        BottomSheetLayout.d(b).a(b);
      }
      BottomSheetLayout.a(b, null);
      BottomSheetLayout.a(b, null);
      if (BottomSheetLayout.e(b) != null)
      {
        BottomSheetLayout.e(b).run();
        BottomSheetLayout.a(b, null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.BottomSheetLayout.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */