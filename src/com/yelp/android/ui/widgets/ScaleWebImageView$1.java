package com.yelp.android.ui.widgets;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class ScaleWebImageView$1
  extends GestureDetector.SimpleOnGestureListener
{
  ScaleWebImageView$1(ScaleWebImageView paramScaleWebImageView) {}
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    if (ScaleWebImageView.a(a) > ScaleWebImageView.b(a))
    {
      ScaleWebImageView.a(a, false);
      a.postDelayed(new ScaleWebImageView.b(a, ScaleWebImageView.b(a), paramMotionEvent.getX(), paramMotionEvent.getY(), true), 16L);
    }
    while (ScaleWebImageView.a(a) != ScaleWebImageView.b(a)) {
      return true;
    }
    ScaleWebImageView.a(a, false);
    a.postDelayed(new ScaleWebImageView.b(a, ScaleWebImageView.b(a) * 2.0F, paramMotionEvent.getX(), paramMotionEvent.getY(), false), 16L);
    return true;
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (ScaleWebImageView.c(a) != null) {
      ScaleWebImageView.c(a).a();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ScaleWebImageView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */