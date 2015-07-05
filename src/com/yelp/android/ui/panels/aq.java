package com.yelp.android.ui.panels;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout.LayoutParams;

class aq
  extends Animation
{
  aq(ak paramak, int paramInt1, int paramInt2) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = (FrameLayout.LayoutParams)ak.e(c).getLayoutParams();
    int i = a + (int)(b * paramFloat);
    leftMargin = i;
    rightMargin = (i * -1);
    ak.e(c).requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */