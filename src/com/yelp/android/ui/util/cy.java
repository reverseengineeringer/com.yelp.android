package com.yelp.android.ui.util;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class cy
  extends Animation
{
  cy(View paramView, boolean paramBoolean, int paramInt) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (paramFloat == 1.0F)
    {
      a.setVisibility(8);
      return;
    }
    if (b) {
      paramTransformation.setAlpha(1.0F - paramFloat);
    }
    a.getLayoutParams().height = (c - (int)(c * paramFloat));
    a.requestLayout();
  }
  
  public boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */