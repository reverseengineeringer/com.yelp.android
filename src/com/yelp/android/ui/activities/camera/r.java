package com.yelp.android.ui.activities.camera;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class r
  implements View.OnTouchListener
{
  r(VideoCaptureFragment paramVideoCaptureFragment) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      do
      {
        return false;
      } while (!VideoCaptureFragment.a(a));
      VideoCaptureFragment.b(a);
      return false;
      if (System.currentTimeMillis() - VideoCaptureFragment.c(a) < 500L)
      {
        VideoCaptureFragment.a(a, false);
        return false;
      }
    } while (!VideoCaptureFragment.d(a));
    VideoCaptureFragment.e(a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */