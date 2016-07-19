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
import com.google.android.gms.gcm.a;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
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
  
  protected static void a()
  {
    try
    {
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(cd) == 0) {
        ce = true;
      }
      if (ce)
      {
        Object localObject1 = "GCM is being managed from Play Services";
        d((String)localObject1);
        localObject2 = d(cd);
        localObject1 = ((SharedPreferences)localObject2).edit();
        if (!ce) {
          break label119;
        }
        localObject2 = ((SharedPreferences)localObject2).getString("regId", "");
        if (!w.a((String)localObject2))
        {
          d("Migrating Push Token from Old GCM to Play Services");
          ((SharedPreferences.Editor)localObject1).putString("registration_id", (String)localObject2);
        }
        ((SharedPreferences.Editor)localObject1).commit();
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        ce = false;
        continue;
        String str = "GCM is being managed from Old GCM Client Library";
        continue;
        label119:
        Object localObject2 = ((SharedPreferences)localObject2).getString("registration_id", "");
        if (!w.a((String)localObject2))
        {
          d("Migrating Push Token from Play Services back to Old GCM");
          str.putString("regId", (String)localObject2);
        }
      }
    }
  }
  
  private void a(long paramLong)
  {
    synchronized (h)
    {
      if (g != null) {
        g.cancel();
      }
      g = new Timer();
      g.schedule(new a(f), paramLong);
      return;
    }
  }
  
  protected static void a(Context paramContext)
  {
    cd = paramContext;
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
  
  protected static String b()
  {
    if (ce)
    {
      SharedPreferences localSharedPreferences = d(cd);
      String str = localSharedPreferences.getString("registration_id", "");
      if ("".equals(str))
      {
        d("Registration not found.");
        str = "";
      }
      while (localSharedPreferences.getInt("appVersion", Integer.MIN_VALUE) == f(cd)) {
        return str;
      }
      d("App version changed.");
      return "";
    }
    return e.c(cd);
  }
  
  protected static void b(Context paramContext)
  {
    d("Resetting backoff");
    a(paramContext, 3000);
  }
  
  protected static void b(String paramString)
  {
    try
    {
      l.j().c(paramString);
      l.j().e();
      return;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        Log.e("Kahuna", "KahunaSDK wasn't initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior");
        paramString.printStackTrace();
      }
    }
    finally {}
  }
  
  protected static int c(Context paramContext)
  {
    return d(paramContext).getInt("backoff_ms", 3000);
  }
  
  protected static boolean c()
  {
    return ce;
  }
  
  protected static SharedPreferences d(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.google.android.gcm", 0);
  }
  
  protected static void d()
  {
    try
    {
      l.j().l();
      return;
    }
    catch (Exception localException)
    {
      Log.e("Kahuna", "KahunaSDK wasn't initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior");
      localException.printStackTrace();
    }
  }
  
  private static void d(String paramString)
  {
    if (l.u()) {
      if (!ce) {
        break label43;
      }
    }
    label43:
    for (String str = "Play Services GCM: ";; str = "Old GCM: ")
    {
      Log.d("Kahuna", str + paramString);
      return;
    }
  }
  
  protected static void e()
  {
    int i = c(cd);
    int j = i / 2;
    j = a.nextInt(i) + j;
    d("Scheduling registration retry, backoff = " + j + "(" + i + ")");
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
  
  private class a
    extends TimerTask
  {
    private String b;
    
    public a(String paramString)
    {
      b = paramString;
    }
    
    public void run()
    {
      if ((b == null) || ("".equals(b))) {}
      do
      {
        for (;;)
        {
          return;
          String str2;
          try
          {
            String str1 = a.a(f.a(f.f())).a(new String[] { b });
            f.b(str1);
            Object localObject = f.d(f.a(f.f()));
            int i = f.e(f.a(f.f()));
            f.c("Saving regId on app version " + i);
            localObject = ((SharedPreferences)localObject).edit();
            ((SharedPreferences.Editor)localObject).putString("registration_id", str1);
            ((SharedPreferences.Editor)localObject).putInt("appVersion", i);
            ((SharedPreferences.Editor)localObject).commit();
            return;
          }
          catch (Throwable localThrowable1)
          {
            if (l.u())
            {
              Log.e("Kahuna", "Exception registering for Push: " + localThrowable1);
              localThrowable1.printStackTrace();
            }
            str2 = localThrowable1.getMessage();
          }
          if (str2 != null) {
            try
            {
              if ("SERVICE_NOT_AVAILABLE".equals(str2))
              {
                f.e();
                return;
              }
            }
            catch (Throwable localThrowable2) {}
          }
        }
      } while (!l.u());
      Log.e("Kahuna", "More exception registering for Push: " + localThrowable2);
      localThrowable2.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */