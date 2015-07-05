package com.yelp.android.ui.util;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class cz
  extends Animation
{
  cz(View paramView, int paramInt, dd paramdd) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    a.getLayoutParams().height = ((int)(b * paramFloat) + 10);
    a.requestLayout();
    if (c != null) {
      c.a(this);
    }
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */