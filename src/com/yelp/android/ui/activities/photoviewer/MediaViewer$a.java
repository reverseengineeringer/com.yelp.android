package com.yelp.android.ui.activities.photoviewer;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.preference.PreferenceManager;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;

class MediaViewer$a
{
  private static AudioManager a;
  private static SharedPreferences b;
  private static boolean c;
  private static boolean d;
  
  private MediaViewer$a()
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
      b(paramBoolean);
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
  
  @TargetApi(23)
  private void b(boolean paramBoolean)
  {
    if (f.a(23))
    {
      AudioManager localAudioManager = a;
      if (paramBoolean) {}
      for (int i = -100;; i = 100)
      {
        localAudioManager.adjustStreamVolume(3, i, 0);
        return;
      }
    }
    a.setStreamMute(3, paramBoolean);
  }
  
  private void c()
  {
    if (d != c)
    {
      b(d);
      c = d;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */