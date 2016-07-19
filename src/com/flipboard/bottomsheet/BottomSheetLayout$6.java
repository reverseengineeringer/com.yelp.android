package com.flipboard.bottomsheet;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

class BottomSheetLayout$6
  implements View.OnLayoutChangeListener
{
  BottomSheetLayout$6(BottomSheetLayout paramBottomSheetLayout) {}
  
  public void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    paramInt1 = paramView.getMeasuredHeight();
    if ((BottomSheetLayout.b(a) != BottomSheetLayout.State.HIDDEN) && (paramInt1 < BottomSheetLayout.c(a)))
    {
      if (BottomSheetLayout.b(a) == BottomSheetLayout.State.EXPANDED) {
        BottomSheetLayout.a(a, BottomSheetLayout.State.PEEKED);
      }
      BottomSheetLayout.a(a, paramInt1);
    }
    BottomSheetLayout.a(a, paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.BottomSheetLayout.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */