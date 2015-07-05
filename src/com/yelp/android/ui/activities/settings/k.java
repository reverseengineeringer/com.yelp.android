package com.yelp.android.ui.activities.settings;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.webrequests.dc;

class k
  implements ao
{
  k(ChangeSettings paramChangeSettings) {}
  
  public void a(PreferenceView paramPreferenceView)
  {
    RemoteConfigPreferences localRemoteConfigPreferences = AppData.b().m().h();
    int j = DEFAULT_SCHEDULEtitleRes;
    int i = j;
    if (localRemoteConfigPreferences != null)
    {
      i = j;
      if (localRemoteConfigPreferences.a() != null)
      {
        i = j;
        if (localRemoteConfigPreferences.a() != RemoteConfigPreferences.NotificationSchedule.NO_ALERTS) {
          i = atitleRes;
        }
      }
    }
    paramPreferenceView.setSubtitle(a.getText(i));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */