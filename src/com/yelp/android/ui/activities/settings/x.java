package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.webrequests.dc;

public class x
  extends a
{
  public void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString)
  {
    boolean bool = true;
    paramContext = AppData.b().m().h();
    if (paramContext != null)
    {
      int i;
      int j;
      if ((paramContext.a() == null) || (paramContext.a() == RemoteConfigPreferences.NotificationSchedule.NO_ALERTS))
      {
        i = 1;
        if ((paramContext.b() != null) && (paramContext.b() != RemoteConfigPreferences.NotificationLocation.NONE)) {
          break label82;
        }
        j = 1;
        label57:
        if ((i | j) != 0) {
          break label88;
        }
      }
      for (;;)
      {
        paramEditor.putBoolean(paramString, bool);
        return;
        i = 0;
        break;
        label82:
        j = 0;
        break label57;
        label88:
        bool = false;
      }
    }
    paramEditor.remove(paramString);
  }
  
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    if ((paramRemoteConfigPreferences.a() != null) && (paramRemoteConfigPreferences.a() != RemoteConfigPreferences.NotificationSchedule.NO_ALERTS)) {}
    for (boolean bool = true;; bool = false)
    {
      paramEditor.putBoolean(paramString, bool).commit();
      return;
    }
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    if (!Boolean.valueOf(paramString).booleanValue())
    {
      paramRemoteConfigPreferences.a(RemoteConfigPreferences.NotificationSchedule.NO_ALERTS);
      return;
    }
    paramRemoteConfigPreferences.a(RemoteConfigPreferences.NotificationSchedule.DEFAULT_SCHEDULE);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */