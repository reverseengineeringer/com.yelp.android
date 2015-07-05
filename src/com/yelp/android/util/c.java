package com.yelp.android.util;

import android.app.backup.BackupManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.util.Log;

public class c
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  private final BackupManager a;
  
  public c(Context paramContext)
  {
    a = new BackupManager(paramContext);
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    a.dataChanged();
    Log.i("Backup", "Backup requested");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */