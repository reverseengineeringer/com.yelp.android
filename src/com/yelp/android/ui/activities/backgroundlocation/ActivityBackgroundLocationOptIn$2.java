package com.yelp.android.ui.activities.backgroundlocation;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityBackgroundLocationOptIn$2
  implements View.OnClickListener
{
  ActivityBackgroundLocationOptIn$2(ActivityBackgroundLocationOptIn paramActivityBackgroundLocationOptIn) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BackgroundLocationOptInNo);
    ActivityBackgroundLocationOptIn.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.backgroundlocation.ActivityBackgroundLocationOptIn.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */