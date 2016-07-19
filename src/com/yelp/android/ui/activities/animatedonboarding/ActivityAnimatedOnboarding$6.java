package com.yelp.android.ui.activities.animatedonboarding;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityCreateAccount;

class ActivityAnimatedOnboarding$6
  implements View.OnClickListener
{
  ActivityAnimatedOnboarding$6(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveNoAccount);
    a.startActivityForResult(ActivityCreateAccount.b(a, true), 1016);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */