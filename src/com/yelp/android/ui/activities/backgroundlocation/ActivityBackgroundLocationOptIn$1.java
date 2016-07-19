package com.yelp.android.ui.activities.backgroundlocation;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.services.backgroundlocation.a;

class ActivityBackgroundLocationOptIn$1
  implements View.OnClickListener
{
  ActivityBackgroundLocationOptIn$1(ActivityBackgroundLocationOptIn paramActivityBackgroundLocationOptIn) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BackgroundLocationOptInYes);
    if (AppData.b().q().b()) {
      AppData.b().o().a(REPORT_BACKGROUND_LOCATIONapiKey, true);
    }
    PreferenceManager.getDefaultSharedPreferences(a).edit().putBoolean(a.getString(2131166959), true).commit();
    AppData.b().s().a();
    ActivityBackgroundLocationOptIn.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.backgroundlocation.ActivityBackgroundLocationOptIn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */