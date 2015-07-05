package com.yelp.android.bc;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Paint;

class b
  implements ValueAnimator.AnimatorUpdateListener
{
  b(a parama) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    a.a(a).setAlpha((int)(f * 255.0F));
    a.b(a).setAlpha(255 - (int)(f * 255.0F));
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bc.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */