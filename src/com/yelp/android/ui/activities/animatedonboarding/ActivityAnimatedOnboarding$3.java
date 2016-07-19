package com.yelp.android.ui.activities.animatedonboarding;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.v4.view.ViewPager;

class ActivityAnimatedOnboarding$3
  implements ValueAnimator.AnimatorUpdateListener
{
  ActivityAnimatedOnboarding$3(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if ((!ActivityAnimatedOnboarding.b(a).a()) && (!ActivityAnimatedOnboarding.c(a))) {
      ActivityAnimatedOnboarding.a(a).scrollTo(((Integer)paramValueAnimator.getAnimatedValue()).intValue(), 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */