package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.RemoteConfigPreferences;

public class ad
  extends a
{
  void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramEditor.putBoolean(paramString, paramRemoteConfigPreferences.e().booleanValue());
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString)
  {
    paramRemoteConfigPreferences.b(Boolean.valueOf(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */