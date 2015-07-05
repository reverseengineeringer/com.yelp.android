package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.ai;

public class r
  extends a
  implements t
{
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramEditor.putBoolean(paramString, paramRemoteConfigPreferences.m().a());
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    paramRemoteConfigPreferences.a(new ai(Boolean.valueOf(paramString).booleanValue()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */