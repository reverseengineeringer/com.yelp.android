package com.yelp.android.ui.activities.businesspage;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class k
  implements View.OnTouchListener
{
  k(h paramh) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      a.b.b(true);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */