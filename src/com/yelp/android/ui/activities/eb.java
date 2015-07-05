package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class eb
  implements View.OnClickListener
{
  eb(ActivitySplashLogin paramActivitySplashLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.LoginSplashHaveAccount);
    paramView = new Intent();
    paramView.setClass(a, ActivityLogin.class);
    paramView.putExtra("com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion", true);
    paramView.putExtra("from_splash", true);
    paramView.addFlags(536870912);
    a.startActivityForResult(paramView, 1043);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */