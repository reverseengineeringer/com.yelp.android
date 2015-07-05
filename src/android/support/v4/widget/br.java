package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class br
  extends Animation
{
  br(SwipeRefreshLayout paramSwipeRefreshLayout, int paramInt1, int paramInt2) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwipeRefreshLayout.b(c).setAlpha((int)(a + (b - a) * paramFloat));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */