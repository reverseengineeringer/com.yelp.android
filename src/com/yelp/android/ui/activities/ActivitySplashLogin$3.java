package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivitySplashLogin$3
  implements View.OnClickListener
{
  ActivitySplashLogin$3(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashFacebookConnect);
    a.startActivityForResult(ActivityCreateAccount.a(a, true), 1016);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */