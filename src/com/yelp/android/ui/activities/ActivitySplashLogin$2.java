package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivitySplashLogin$2
  implements View.OnClickListener
{
  ActivitySplashLogin$2(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveAccount);
    paramView = ActivityLogin.a(a);
    paramView.addFlags(536870912);
    a.startActivityForResult(paramView, 1048);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */