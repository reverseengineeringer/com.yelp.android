package com.yelp.android.ui.util;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

class ae
  implements ValueAnimator.AnimatorUpdateListener
{
  ae(ab paramab) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    a.a(((Float)paramValueAnimator.getAnimatedValue()).floatValue());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */