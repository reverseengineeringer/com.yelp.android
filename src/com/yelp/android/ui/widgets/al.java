package com.yelp.android.ui.widgets;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;

class al
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  al(ScaleWebImageView paramScaleWebImageView) {}
  
  public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    ScaleWebImageView.a(a, paramScaleGestureDetector.getScaleFactor(), paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
    return true;
  }
  
  public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (!ScaleWebImageView.d(a)) {
      return false;
    }
    ScaleWebImageView.a(a, false);
    ScaleWebImageView.b(a, false);
    return true;
  }
  
  public void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (ScaleWebImageView.a(a) < ScaleWebImageView.b(a))
    {
      a.postDelayed(new an(a, ScaleWebImageView.b(a), a.getWidth() / 2, a.getHeight() / 2, true), 16L);
      return;
    }
    a.postDelayed(new am(a), 16L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */