package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.dc;

class b
  extends s
{
  b(a parama, ChangeSettings paramChangeSettings, String paramString, Object paramObject)
  {
    super(paramChangeSettings, paramString);
  }
  
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    b.a(paramEditor, paramString, paramRemoteConfigPreferences);
    b.a(c.getAppData().m().h(), String.valueOf(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */