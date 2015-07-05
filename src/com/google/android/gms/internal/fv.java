package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

@ey
public final class fv
{
  public final boolean vA;
  public final boolean vB;
  public final int vC;
  public final int vg;
  public final boolean vh;
  public final boolean vi;
  public final String vj;
  public final String vk;
  public final boolean vl;
  public final boolean vm;
  public final boolean vn;
  public final String vo;
  public final String vp;
  public final int vq;
  public final int vr;
  public final int vs;
  public final int vt;
  public final int vu;
  public final int vv;
  public final float vw;
  public final int vx;
  public final int vy;
  public final double vz;
  
  public fv(Context paramContext)
  {
    AudioManager localAudioManager = (AudioManager)paramContext.getSystemService("audio");
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    Locale localLocale = Locale.getDefault();
    PackageManager localPackageManager = paramContext.getPackageManager();
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    vg = localAudioManager.getMode();
    boolean bool1;
    if (a(localPackageManager, "geo:0,0?q=donuts") != null)
    {
      bool1 = true;
      vh = bool1;
      if (a(localPackageManager, "http://www.google.com") == null) {
        break label385;
      }
      bool1 = true;
      label117:
      vi = bool1;
      vj = localTelephonyManager.getNetworkOperator();
      vk = localLocale.getCountry();
      vl = gq.dA();
      vm = localAudioManager.isMusicActive();
      vn = localAudioManager.isSpeakerphoneOn();
      vo = localLocale.getLanguage();
      vp = a(localPackageManager);
      vq = localAudioManager.getStreamVolume(3);
      vr = a(paramContext, localConnectivityManager, localPackageManager);
      vs = localTelephonyManager.getNetworkType();
      vt = localTelephonyManager.getPhoneType();
      vu = localAudioManager.getRingerMode();
      vv = localAudioManager.getStreamVolume(2);
      vw = density;
      vx = widthPixels;
      vy = heightPixels;
      if (localIntent == null) {
        break label397;
      }
      int i = localIntent.getIntExtra("status", -1);
      int j = localIntent.getIntExtra("level", -1);
      int k = localIntent.getIntExtra("scale", -1);
      vz = (j / k);
      bool1 = bool2;
      if (i != 2)
      {
        if (i != 5) {
          break label391;
        }
        bool1 = bool2;
      }
      label332:
      vA = bool1;
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        vB = localConnectivityManager.isActiveNetworkMetered();
        if (localConnectivityManager.getActiveNetworkInfo() != null)
        {
          vC = localConnectivityManager.getActiveNetworkInfo().getDetailedState().ordinal();
          return;
          bool1 = false;
          break;
          label385:
          bool1 = false;
          break label117;
          label391:
          bool1 = false;
          break label332;
          label397:
          vz = -1.0D;
          vA = false;
          continue;
        }
        vC = -1;
        return;
      }
    }
    vB = false;
    vC = -1;
  }
  
  private static int a(Context paramContext, ConnectivityManager paramConnectivityManager, PackageManager paramPackageManager)
  {
    int i = -2;
    if (gi.a(paramPackageManager, paramContext.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
    {
      paramContext = paramConnectivityManager.getActiveNetworkInfo();
      if (paramContext != null) {
        i = paramContext.getType();
      }
    }
    else
    {
      return i;
    }
    return -1;
  }
  
  private static ResolveInfo a(PackageManager paramPackageManager, String paramString)
  {
    return paramPackageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)), 65536);
  }
  
  private static String a(PackageManager paramPackageManager)
  {
    Object localObject = a(paramPackageManager, "market://details?id=com.google.android.gms.ads");
    if (localObject == null) {}
    for (;;)
    {
      return null;
      localObject = activityInfo;
      if (localObject != null) {
        try
        {
          paramPackageManager = paramPackageManager.getPackageInfo(packageName, 0);
          if (paramPackageManager != null)
          {
            paramPackageManager = versionCode + "." + packageName;
            return paramPackageManager;
          }
        }
        catch (PackageManager.NameNotFoundException paramPackageManager) {}
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */