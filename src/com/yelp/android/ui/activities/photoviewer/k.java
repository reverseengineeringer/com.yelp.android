package com.yelp.android.ui.activities.photoviewer;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.preference.PreferenceManager;
import com.yelp.android.appdata.AppData;

class k
{
  private static AudioManager a;
  private static SharedPreferences b;
  private static boolean c;
  private static boolean d;
  
  private k()
  {
    if ((a == null) && (b == null))
    {
      AppData localAppData = AppData.b();
      b = PreferenceManager.getDefaultSharedPreferences(localAppData.getApplicationContext());
      a = (AudioManager)localAppData.getSystemService("audio");
      c = a();
      d = a();
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean != c)
    {
      a.setStreamMute(3, paramBoolean);
      c = paramBoolean;
      b.edit().putBoolean("muted", paramBoolean).apply();
    }
  }
  
  private boolean a()
  {
    return a.getStreamVolume(3) == 0;
  }
  
  private void b()
  {
    a(b.getBoolean("muted", a()));
  }
  
  private void c()
  {
    if (d != c)
    {
      a.setStreamMute(3, d);
      c = d;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */