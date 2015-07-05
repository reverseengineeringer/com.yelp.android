package com.yelp.android.ak;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.os.Looper;
import android.provider.Settings.Secure;

public class d
{
  private static final String a = "com.google.android.gms";
  private static final String b = "com.google.android.gms.ads.identifier.service.START";
  private static boolean c = false;
  private static final boolean d = false;
  
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
        Intent localIntent = new Intent(b);
        localIntent.setPackage(a);
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
  
  public static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    bool3 = false;
    bool1 = false;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (c) {
      bool2 = bool1;
    }
    do
    {
      return bool2;
      localf = new f(null);
      Intent localIntent = new Intent(b);
      localIntent.setPackage(a);
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
    c = true;
    return bool1;
  }
  
  public static final c c(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (f(paramContext))
    {
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
            paramContext = e(paramContext);
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
    return d(paramContext);
  }
  
  public static c d(Context paramContext)
  {
    String str2 = g(paramContext);
    int j = 3;
    int i = 1;
    String str1 = str2;
    if (str2 == null)
    {
      str1 = h(paramContext);
      j = 7;
      i = 2;
    }
    return new c(str1, j, i);
  }
  
  private static String e(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    String str = "";
    f localf = new f(null);
    Intent localIntent = new Intent(b);
    localIntent.setPackage(a);
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
  
  private static boolean f(Context paramContext)
  {
    if (Build.VERSION.SDK_INT > 4)
    {
      if (d) {
        return true;
      }
      return a.a(paramContext);
    }
    return false;
  }
  
  private static final String g(Context paramContext)
  {
    paramContext = i(paramContext);
    if ((paramContext != null) && (paramContext.length() > 0) && (!paramContext.equals("unknown")) && (paramContext.length() > 3) && (!paramContext.substring(0, 3).equals("***")) && (!paramContext.substring(0, 3).equals("000"))) {
      return paramContext;
    }
    return null;
  }
  
  private static final String h(Context paramContext)
  {
    paramContext = j(paramContext);
    if ((paramContext != null) && (paramContext.length() > 0)) {
      return paramContext;
    }
    return null;
  }
  
  private static final String i(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {
      return b.a(paramContext);
    }
    return null;
  }
  
  private static final String j(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 3)
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if ((paramContext != null) && (paramContext.length() > 0) && (!"9774d56d682e549c".equals(paramContext)) && (!"unknown".equals(paramContext)) && (!"android_id".equals(paramContext))) {
        return paramContext;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */