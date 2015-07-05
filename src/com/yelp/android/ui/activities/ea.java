package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ea
  implements View.OnClickListener
{
  ea(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveNoAccount);
    a.startActivityForResult(ActivityCreateAccount.a(a, true), 1010);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */