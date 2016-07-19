package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;

class ActivityRateAppPrompt$1
  implements View.OnClickListener
{
  ActivityRateAppPrompt$1(ActivityRateAppPrompt paramActivityRateAppPrompt) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.AppRateRate);
    a.getAppData().f().b(true);
    a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + a.getPackageName())));
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRateAppPrompt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */