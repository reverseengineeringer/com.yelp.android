package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class av$4
  extends Animation
{
  av$4(View paramView1, int paramInt1, View paramView2, int paramInt2) {}
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = (ViewGroup.MarginLayoutParams)a.getLayoutParams();
    topMargin = ((int)(-a.getHeight() * paramFloat + b * (1.0F - paramFloat)));
    a.setLayoutParams(paramTransformation);
    c.setPadding(0, (int)(d - d * paramFloat), 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */