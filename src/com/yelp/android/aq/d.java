package com.yelp.android.aq;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Looper;
import android.provider.Settings.Secure;

public class d
{
  public static final String[] a = { "0123456789ABCDEF", "0123456789abcdef", "9774d56d682e549c", "9774D56D682E549C", "unknown", "UNKNOWN", "android_id", "ANDROID_ID" };
  private static final String b = "com.google.android.gms";
  private static final String c = "com.google.android.gms.ads.identifier.service.START";
  private static boolean d = false;
  private static final boolean e = false;
  
  public static final c a()
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {
      return new c("AndroidSerial", b.a(), 3, 1);
    }
    return null;
  }
  
  public static boolean a(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (Build.VERSION.SDK_INT <= 8) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
        f localf = new f(null);
        Intent localIntent = new Intent(c);
        localIntent.setPackage(b);
        if (paramContext.bindService(localIntent, localf, 1))
        {
          paramContext.unbindService(localf);
          return true;
        }
      }
      catch (Exception paramContext) {}
    }
    return false;
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {}
    label35:
    do
    {
      return false;
      int i = 0;
      for (;;)
      {
        if (i >= a.length) {
          break label35;
        }
        if (a[i].equals(paramString)) {
          break;
        }
        i += 1;
      }
    } while ((paramString.length() <= 3) || (paramString.substring(0, 3).equals("***")) || (paramString.substring(0, 3).equals("000")));
    return true;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    bool3 = false;
    bool1 = false;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (d) {
      bool2 = bool1;
    }
    do
    {
      return bool2;
      localf = new f(null);
      Intent localIntent = new Intent(c);
      localIntent.setPackage(b);
      bool1 = bool3;
      if (paramContext.bindService(localIntent, localf, 1)) {}
      try
      {
        boolean bool4 = new g(localf.a()).a(true);
        bool1 = bool2;
        if (!bool4) {
          bool1 = true;
        }
        paramContext.unbindService(localf);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException = localException;
          paramContext.unbindService(localf);
          bool1 = bool3;
        }
      }
      finally
      {
        localObject = finally;
        paramContext.unbindService(localf);
        throw ((Throwable)localObject);
      }
      bool2 = bool1;
    } while (bool1);
    d = true;
    return bool1;
  }
  
  public static boolean b(String paramString)
  {
    int i = 0;
    while (i < a.length)
    {
      if (a[i].equals(paramString)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public static final c c(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (h(paramContext)) {
      return d(paramContext);
    }
    return f(paramContext);
  }
  
  public static final c d(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    for (;;)
    {
      try
      {
        boolean bool = a(paramContext);
        if (!bool) {
          break;
        }
        if (b(paramContext))
        {
          paramContext = g(paramContext);
          return new c(paramContext);
        }
      }
      catch (IllegalStateException paramContext)
      {
        throw paramContext;
      }
      paramContext = "none";
    }
    return null;
  }
  
  public static final c e(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 3)
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if ((paramContext != null) && (paramContext.length() > 0)) {
        return new c("AndroidId", paramContext, 7, 2);
      }
    }
    return null;
  }
  
  public static c f(Context paramContext)
  {
    c localc = a();
    Object localObject = localc;
    if (!a(localc.a()))
    {
      paramContext = e(paramContext);
      localObject = paramContext;
      if (!b(paramContext.a())) {
        localObject = null;
      }
    }
    return (c)localObject;
  }
  
  private static String g(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    String str = "";
    f localf = new f(null);
    Intent localIntent = new Intent(c);
    localIntent.setPackage(b);
    if (paramContext.bindService(localIntent, localf, 1)) {}
    try
    {
      str = new g(localf.a()).a();
      paramContext.unbindService(localf);
      return str;
    }
    catch (Exception localException)
    {
      localException = localException;
      paramContext.unbindService(localf);
      return "";
    }
    finally
    {
      localObject = finally;
      paramContext.unbindService(localf);
      throw ((Throwable)localObject);
    }
  }
  
  private static boolean h(Context paramContext)
  {
    if (Build.VERSION.SDK_INT > 4)
    {
      if (e) {
        return true;
      }
      return a.a(paramContext);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aq.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */