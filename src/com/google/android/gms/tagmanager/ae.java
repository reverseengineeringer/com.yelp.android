package com.google.android.gms.tagmanager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;

class ae
{
  @SuppressLint({"CommitPrefEdits"})
  static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = paramContext.getSharedPreferences(paramString1, 0).edit();
    paramContext.putString(paramString2, paramString3);
    a(paramContext);
  }
  
  static void a(SharedPreferences.Editor paramEditor)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramEditor.apply();
      return;
    }
    new Thread(new Runnable()
    {
      public void run()
      {
        a.commit();
      }
    }).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */