package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityRateAppPrompt$2
  implements View.OnClickListener
{
  ActivityRateAppPrompt$2(ActivityRateAppPrompt paramActivityRateAppPrompt) {}
  
  public void onClick(View paramView)
  {
    ActivityRateAppPrompt.a(a);
    AppData.a(EventIri.AppRateRemind);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRateAppPrompt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */