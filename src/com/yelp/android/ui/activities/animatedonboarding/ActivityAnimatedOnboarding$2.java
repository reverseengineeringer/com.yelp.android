package com.yelp.android.ui.activities.animatedonboarding;

import android.os.Handler;
import android.support.v4.view.ViewPager;

class ActivityAnimatedOnboarding$2
  implements Runnable
{
  ActivityAnimatedOnboarding$2(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void run()
  {
    if (ActivityAnimatedOnboarding.a(a).getCurrentItem() == 0)
    {
      if ((!ActivityAnimatedOnboarding.b(a).a()) && (!ActivityAnimatedOnboarding.c(a))) {
        a.a(150, 1500);
      }
      ActivityAnimatedOnboarding.e(a).postDelayed(ActivityAnimatedOnboarding.d(a), 3000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */