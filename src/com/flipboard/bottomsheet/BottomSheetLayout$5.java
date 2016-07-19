package com.flipboard.bottomsheet;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class BottomSheetLayout$5
  implements ViewTreeObserver.OnPreDrawListener
{
  BottomSheetLayout$5(BottomSheetLayout paramBottomSheetLayout) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    a.post(new Runnable()
    {
      public void run()
      {
        if (a.getSheetView() != null) {
          a.b();
        }
      }
    });
    return true;
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.BottomSheetLayout.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */