package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.RemoteConfigPreferences;

public class ap
  extends a
{
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    if (Boolean.TRUE == paramRemoteConfigPreferences.j()) {}
    for (boolean bool = true;; bool = false)
    {
      paramEditor.putBoolean(paramString, bool);
      return;
    }
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    paramRemoteConfigPreferences.a(Boolean.valueOf(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */