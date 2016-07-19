package com.google.android.gms.internal;

import android.annotation.TargetApi;
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
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.zze;
import java.util.Locale;

@fv
public final class gd
{
  public final int a;
  public final boolean b;
  public final boolean c;
  public final String d;
  public final String e;
  public final boolean f;
  public final boolean g;
  public final boolean h;
  public final boolean i;
  public final String j;
  public final String k;
  public final int l;
  public final int m;
  public final int n;
  public final int o;
  public final int p;
  public final int q;
  public final float r;
  public final int s;
  public final int t;
  public final double u;
  public final boolean v;
  public final boolean w;
  public final int x;
  public final String y;
  
  gd(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, String paramString3, String paramString4, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, float paramFloat, int paramInt8, int paramInt9, double paramDouble, boolean paramBoolean7, boolean paramBoolean8, int paramInt10, String paramString5)
  {
    a = paramInt1;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramString1;
    e = paramString2;
    f = paramBoolean3;
    g = paramBoolean4;
    h = paramBoolean5;
    i = paramBoolean6;
    j = paramString3;
    k = paramString4;
    l = paramInt2;
    m = paramInt3;
    n = paramInt4;
    o = paramInt5;
    p = paramInt6;
    q = paramInt7;
    r = paramFloat;
    s = paramInt8;
    t = paramInt9;
    u = paramDouble;
    v = paramBoolean7;
    w = paramBoolean8;
    x = paramInt10;
    y = paramString5;
  }
  
  public static final class a
  {
    private int a;
    private boolean b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private double m;
    private boolean n;
    private String o;
    private boolean p;
    private boolean q;
    private String r;
    private boolean s;
    private boolean t;
    private String u;
    private String v;
    private float w;
    private int x;
    private int y;
    
    public a(Context paramContext)
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      a(paramContext);
      a(paramContext, localPackageManager);
      b(paramContext);
      Locale localLocale = Locale.getDefault();
      boolean bool1;
      if (a(localPackageManager, "geo:0,0?q=donuts") != null)
      {
        bool1 = true;
        p = bool1;
        if (a(localPackageManager, "http://www.google.com") == null) {
          break label128;
        }
        bool1 = bool2;
        label63:
        q = bool1;
        r = localLocale.getCountry();
        s = v.a().a();
        t = zze.zzap(paramContext);
        u = localLocale.getLanguage();
        v = a(localPackageManager);
        paramContext = paramContext.getResources();
        if (paramContext != null) {
          break label133;
        }
      }
      label128:
      label133:
      do
      {
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label63;
        paramContext = paramContext.getDisplayMetrics();
      } while (paramContext == null);
      w = density;
      x = widthPixels;
      y = heightPixels;
    }
    
    public a(Context paramContext, gd paramgd)
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      a(paramContext);
      a(paramContext, localPackageManager);
      b(paramContext);
      c(paramContext);
      p = b;
      q = c;
      r = e;
      s = f;
      t = g;
      u = j;
      v = k;
      w = r;
      x = s;
      y = t;
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
    
    private void a(Context paramContext)
    {
      paramContext = (AudioManager)paramContext.getSystemService("audio");
      a = paramContext.getMode();
      b = paramContext.isMusicActive();
      c = paramContext.isSpeakerphoneOn();
      d = paramContext.getStreamVolume(3);
      e = paramContext.getRingerMode();
      f = paramContext.getStreamVolume(2);
    }
    
    @TargetApi(16)
    private void a(Context paramContext, PackageManager paramPackageManager)
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      g = localTelephonyManager.getNetworkOperator();
      i = localTelephonyManager.getNetworkType();
      j = localTelephonyManager.getPhoneType();
      h = -2;
      k = false;
      l = -1;
      if (s.e().a(paramPackageManager, paramContext.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
      {
        paramContext = localConnectivityManager.getActiveNetworkInfo();
        if (paramContext == null) {
          break label128;
        }
        h = paramContext.getType();
        l = paramContext.getDetailedState().ordinal();
      }
      for (;;)
      {
        if (Build.VERSION.SDK_INT >= 16) {
          k = localConnectivityManager.isActiveNetworkMetered();
        }
        return;
        label128:
        h = -1;
      }
    }
    
    private void b(Context paramContext)
    {
      boolean bool = false;
      paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      if (paramContext != null)
      {
        int i1 = paramContext.getIntExtra("status", -1);
        int i2 = paramContext.getIntExtra("level", -1);
        int i3 = paramContext.getIntExtra("scale", -1);
        m = (i2 / i3);
        if ((i1 == 2) || (i1 == 5)) {
          bool = true;
        }
        n = bool;
        return;
      }
      m = -1.0D;
      n = false;
    }
    
    private void c(Context paramContext)
    {
      o = Build.FINGERPRINT;
    }
    
    public gd a()
    {
      return new gd(a, p, q, g, r, s, t, b, c, u, v, d, h, i, j, e, f, w, x, y, m, n, k, l, o);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */