package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;

class dm
  implements View.OnClickListener
{
  dm(ActivityRateAppPrompt paramActivityRateAppPrompt) {}
  
  public void onClick(View paramView)
  {
    AppData.a(AutoIri.AppRateRate);
    a.getAppData().f().b(true);
    a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + a.getPackageName())));
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */