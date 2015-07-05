package com.yelp.android.ui.panels;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout.LayoutParams;

class ap
  extends Animation
{
  ap(ak paramak, int paramInt) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = (FrameLayout.LayoutParams)ak.e(b).getLayoutParams();
    int i = (int)(a - a * paramFloat);
    leftMargin = i;
    rightMargin = (i * -1);
    ak.e(b).requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */