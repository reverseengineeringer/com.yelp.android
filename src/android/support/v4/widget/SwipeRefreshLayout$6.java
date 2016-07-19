package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$6
  extends Animation
{
  SwipeRefreshLayout$6(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (!SwipeRefreshLayout.h(a)) {}
    for (int i = (int)(SwipeRefreshLayout.i(a) - Math.abs(a.b));; i = (int)SwipeRefreshLayout.i(a))
    {
      int j = a.a;
      i = (int)((i - a.a) * paramFloat);
      int k = SwipeRefreshLayout.e(a).getTop();
      SwipeRefreshLayout.a(a, i + j - k, false);
      SwipeRefreshLayout.b(a).a(1.0F - paramFloat);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */