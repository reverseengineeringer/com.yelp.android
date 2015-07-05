package com.yelp.android.ui.panels.businesspage;

import android.annotation.SuppressLint;
import android.support.v4.view.ViewPager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class c
  implements View.OnTouchListener
{
  c(b paramb) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    b.a(a).requestDisallowInterceptTouchEvent(true);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */