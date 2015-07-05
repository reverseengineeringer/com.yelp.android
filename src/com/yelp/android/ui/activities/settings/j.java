package com.yelp.android.ui.activities.settings;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation;
import com.yelp.android.appdata.webrequests.dc;

class j
  implements ao
{
  j(ChangeSettings paramChangeSettings) {}
  
  public void a(PreferenceView paramPreferenceView)
  {
    RemoteConfigPreferences localRemoteConfigPreferences = AppData.b().m().h();
    int j = DEFAULT_LOCATIONtitleRes;
    int i = j;
    if (localRemoteConfigPreferences != null)
    {
      i = j;
      if (localRemoteConfigPreferences.b() != null)
      {
        i = j;
        if (localRemoteConfigPreferences.b() != RemoteConfigPreferences.NotificationLocation.NONE) {
          i = btitleRes;
        }
      }
    }
    paramPreferenceView.setSubtitle(a.getText(i));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */