package com.yelp.android.ck;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.settings.ChangeSettings;

public class c
  extends a
{
  public void a(ChangeSettings paramChangeSettings, String paramString, int paramInt)
  {
    boolean bool = true;
    if (AppData.b().q().b()) {
      super.a(paramChangeSettings, REPORT_BACKGROUND_LOCATIONapiKey, paramInt);
    }
    paramChangeSettings = paramChangeSettings.d().edit();
    if (paramInt == 1) {}
    for (;;)
    {
      paramChangeSettings.putBoolean(paramString, bool).commit();
      return;
      bool = false;
    }
  }
  
  public void b(ChangeSettings paramChangeSettings, String paramString, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ck.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */