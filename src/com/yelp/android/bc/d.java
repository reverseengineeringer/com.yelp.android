package com.yelp.android.bc;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

class d
  implements ValueAnimator.AnimatorUpdateListener
{
  d(c paramc) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    c.a(a, ((Float)paramValueAnimator.getAnimatedValue()).floatValue());
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bc.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */