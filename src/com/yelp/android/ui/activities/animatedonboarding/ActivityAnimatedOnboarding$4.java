package com.yelp.android.ui.activities.animatedonboarding;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityAnimatedOnboarding$4
  implements View.OnClickListener
{
  ActivityAnimatedOnboarding$4(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void onClick(View paramView)
  {
    ActivityAnimatedOnboarding.a(a).a(ActivityAnimatedOnboarding.a(a).getCurrentItem() + 1, true);
    AppData.a(EventIri.AnimatedOnboardingNextPageClick, a.getParametersForIri(EventIri.AnimatedOnboardingNextPageClick));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */