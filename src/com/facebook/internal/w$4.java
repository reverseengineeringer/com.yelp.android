package com.facebook.internal;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class w$4
  implements View.OnTouchListener
{
  w$4(w paramw) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!paramView.hasFocus()) {
      paramView.requestFocus();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.w.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */