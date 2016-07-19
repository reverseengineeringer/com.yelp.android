package com.yelp.android.ui.activities.elite;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.widget.ImageView;

class ActivityEliteWelcomeSplash$4
  implements ValueAnimator.AnimatorUpdateListener
{
  ActivityEliteWelcomeSplash$4(ActivityEliteWelcomeSplash paramActivityEliteWelcomeSplash) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if (((Float)paramValueAnimator.getAnimatedValue()).floatValue() >= 0.0F)
    {
      ActivityEliteWelcomeSplash.c(a).bringToFront();
      ActivityEliteWelcomeSplash.d(a).bringToFront();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.elite.ActivityEliteWelcomeSplash.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */