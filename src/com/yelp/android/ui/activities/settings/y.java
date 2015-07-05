package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.ak;

public class y
  extends a
{
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramEditor.putBoolean(paramString, paramRemoteConfigPreferences.g().a());
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    paramRemoteConfigPreferences.a(new ak(Boolean.valueOf(paramString).booleanValue()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */