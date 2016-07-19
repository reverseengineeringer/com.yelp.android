package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivitySplashLogin$1
  implements View.OnClickListener
{
  ActivitySplashLogin$1(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveNoAccount);
    a.startActivityForResult(ActivityCreateAccount.b(a, true), 1016);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */