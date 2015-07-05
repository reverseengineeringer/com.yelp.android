package com.yelp.android.ui.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;

public class InverseAccelerateInterpolator
  extends AccelerateInterpolator
{
  public InverseAccelerateInterpolator() {}
  
  public InverseAccelerateInterpolator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public float getInterpolation(float paramFloat)
  {
    return Math.abs(super.getInterpolation(paramFloat) - 1.0F);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.InverseAccelerateInterpolator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */