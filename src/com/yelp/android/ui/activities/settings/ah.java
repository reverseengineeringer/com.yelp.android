package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.RemoteConfigPreferences;

public class ah
  extends a
  implements t
{
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramEditor.putBoolean(paramString, paramRemoteConfigPreferences.k().a());
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    paramRemoteConfigPreferences.a(new com.yelp.android.appdata.ah(Boolean.valueOf(paramString).booleanValue()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */