package com.yelp.android.cj;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.settings.PreferenceView;

public class b
  implements i
{
  public void a(PreferenceView paramPreferenceView)
  {
    if (e.k.a()) {}
    for (int i = 0;; i = 8)
    {
      paramPreferenceView.setVisibility(i);
      if (!AppData.b().q().b()) {
        break;
      }
      paramPreferenceView.setChecked(AppData.b().o().a(ApiPreferences.DeviceAwarePreference.REPORT_BACKGROUND_LOCATION));
      return;
    }
    paramPreferenceView.setChecked(PreferenceManager.getDefaultSharedPreferences(AppData.b().getBaseContext()).getBoolean(paramPreferenceView.getKey(), false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */