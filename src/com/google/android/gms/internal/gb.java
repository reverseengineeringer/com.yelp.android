package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;

@ey
public class gb
{
  private final Object mH = new Object();
  private final String vZ;
  private int wm = 0;
  private long wn = -1L;
  private long wo = -1L;
  private int wp = 0;
  private int wq = -1;
  
  public gb(String paramString)
  {
    vZ = paramString;
  }
  
  public static boolean m(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("Theme.Translucent", "style", "android");
    if (i == 0)
    {
      gr.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), "com.google.android.gms.ads.AdActivity");
    try
    {
      if (i == getPackageManagergetActivityInfo0theme) {
        return true;
      }
      gr.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      gr.W("Fail to fetch AdActivity theme");
      gr.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
    }
    return false;
  }
  
  public Bundle b(Context paramContext, String paramString)
  {
    synchronized (mH)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("session_id", vZ);
      localBundle.putLong("basets", wo);
      localBundle.putLong("currts", wn);
      localBundle.putString("seq_num", paramString);
      localBundle.putInt("preqs", wq);
      localBundle.putInt("pclick", wm);
      localBundle.putInt("pimp", wp);
      localBundle.putBoolean("support_transparent_background", m(paramContext));
      return localBundle;
    }
  }
  
  public void b(av paramav, long paramLong)
  {
    synchronized (mH)
    {
      if (wo == -1L)
      {
        wo = paramLong;
        wn = wo;
        if ((extras == null) || (extras.getInt("gw", 2) != 1)) {}
      }
      else
      {
        wn = paramLong;
      }
    }
    wq += 1;
  }
  
  public void cW()
  {
    synchronized (mH)
    {
      wp += 1;
      return;
    }
  }
  
  public void cX()
  {
    synchronized (mH)
    {
      wm += 1;
      return;
    }
  }
  
  public long dq()
  {
    return wo;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */