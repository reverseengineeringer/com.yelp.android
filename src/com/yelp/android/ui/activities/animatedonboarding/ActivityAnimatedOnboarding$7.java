package com.yelp.android.ui.activities.animatedonboarding;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityLogin;

class ActivityAnimatedOnboarding$7
  implements View.OnClickListener
{
  ActivityAnimatedOnboarding$7(ActivityAnimatedOnboarding paramActivityAnimatedOnboarding) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveAccount);
    paramView = new Intent();
    paramView.setClass(a, ActivityLogin.class);
    paramView.addFlags(536870912);
    a.startActivityForResult(paramView, 1048);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */