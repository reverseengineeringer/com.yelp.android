package com.kahuna.sdk;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.Random;
import java.util.Timer;
import java.util.concurrent.TimeUnit;

public class f
{
  private static final Random a = new Random();
  private static final int b = (int)TimeUnit.SECONDS.toMillis(3600L);
  private static f c = new f();
  private Context d;
  private boolean e = false;
  private String f;
  private Timer g;
  private Object h = new Object();
  
  protected static String a()
  {
    if (ce)
    {
      SharedPreferences localSharedPreferences = d(cd);
      String str = localSharedPreferences.getString("registration_id", "");
      if ("".equals(str))
      {
        c("Registration not found.");
        str = "";
      }
      while (localSharedPreferences.getInt("appVersion", Integer.MIN_VALUE) == f(cd)) {
        return str;
      }
      c("App version changed.");
      return "";
    }
    return e.c(cd);
  }
  
  private void a(long paramLong)
  {
    synchronized (h)
    {
      if (g != null) {
        g.cancel();
      }
      g = new Timer();
      g.schedule(new g(this, f), paramLong);
      return;
    }
  }
  
  protected static void a(Context paramContext)
  {
    cd = paramContext;
    try
    {
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) == 0) {
        ce = true;
      }
      if (ce)
      {
        paramContext = "GCM is being managed from Play Services";
        c(paramContext);
        localObject = d(cd);
        paramContext = ((SharedPreferences)localObject).edit();
        if (!ce) {
          break label121;
        }
        localObject = ((SharedPreferences)localObject).getString("regId", "");
        if (!aj.a((String)localObject))
        {
          c("Migrating Push Token from Old GCM to Play Services");
          paramContext.putString("registration_id", (String)localObject);
        }
        paramContext.commit();
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        ce = false;
        continue;
        paramContext = "GCM is being managed from Old GCM Client Library";
        continue;
        label121:
        Object localObject = ((SharedPreferences)localObject).getString("registration_id", "");
        if (!aj.a((String)localObject))
        {
          c("Migrating Push Token from Play Services back to Old GCM");
          paramContext.putString("regId", (String)localObject);
        }
      }
    }
  }
  
  protected static void a(Context paramContext, int paramInt)
  {
    paramContext = d(paramContext).edit();
    paramContext.putInt("backoff_ms", paramInt);
    paramContext.commit();
  }
  
  protected static void a(String paramString)
  {
    cf = paramString;
    if (ce)
    {
      c.a(0L);
      return;
    }
    e.a(cd, new String[] { cf });
  }
  
  protected static void b(Context paramContext)
  {
    c("Resetting backoff");
    a(paramContext, 3000);
  }
  
  protected static boolean b()
  {
    return ce;
  }
  
  protected static int c(Context paramContext)
  {
    return d(paramContext).getInt("backoff_ms", 3000);
  }
  
  protected static void c()
  {
    int i = c(cd);
    int j = i / 2;
    j = a.nextInt(i) + j;
    c("Scheduling registration retry, backoff = " + j + "(" + i + ")");
    if (ce) {
      c.a(j);
    }
    for (;;)
    {
      if (i < b) {
        a(cd, i * 2);
      }
      return;
      Object localObject = new Intent("com.google.android.gcm.intent.RETRY");
      ((Intent)localObject).setPackage(cd.getPackageName());
      localObject = PendingIntent.getBroadcast(cd, 0, (Intent)localObject, 0);
      ((AlarmManager)cd.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + j, (PendingIntent)localObject);
    }
  }
  
  private static void c(String paramString)
  {
    if (h.p()) {
      if (!ce) {
        break label43;
      }
    }
    label43:
    for (String str = "Play Services GCM: ";; str = "Old GCM: ")
    {
      Log.d("KahunaAnalytics", str + paramString);
      return;
    }
  }
  
  protected static SharedPreferences d(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.google.android.gcm", 0);
  }
  
  private static int f(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */