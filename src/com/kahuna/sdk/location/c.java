package com.kahuna.sdk.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import com.kahuna.sdk.l;
import java.util.Arrays;
import java.util.List;

public class c
{
  private static final List<Integer> a = Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(8), Integer.valueOf(7), Integer.valueOf(5) });
  private static int b = -1;
  private static final c i = new c();
  private boolean c = false;
  private Context d;
  private b e;
  private a f;
  private boolean g = false;
  private int h = 15000;
  
  protected static void a(int paramInt)
  {
    if (i != null)
    {
      ih = paramInt;
      if (ih < 0) {
        ih = 15000;
      }
    }
  }
  
  public static void a(Context paramContext, Intent paramIntent)
  {
    paramContext = ActivityRecognitionResult.b(paramIntent).a();
    int j = paramContext.b();
    int k = paramContext.a();
    if ((j >= 65) && (b != k))
    {
      b = k;
      if (a.contains(Integer.valueOf(k)))
      {
        if (l.u()) {
          Log.d("Kahuna", "Got supported Activity type: " + b(k));
        }
        KahunaIBeaconManager.b();
      }
    }
    else
    {
      return;
    }
    if (l.u()) {
      Log.d("Kahuna", "Got unsupported Activity type: " + b(k));
    }
    KahunaIBeaconManager.c();
  }
  
  public static void a(l paraml)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      do
      {
        return;
        if (ig) {
          break;
        }
      } while (!l.u());
      Log.w("Kahuna", "App doens't have required permissions for Activity Monitoring. Aborting request for updates!");
      return;
    } while (ic);
    try
    {
      i.d();
      ie.b();
      ic = true;
      return;
    }
    catch (Throwable paraml)
    {
      for (;;)
      {
        if (l.u())
        {
          Log.w("Kahuna", "Caught error when attempting to request for ActivityMonitoring Updates.");
          Log.w("Kahuna", paraml);
        }
      }
    }
  }
  
  public static boolean a()
  {
    return ig;
  }
  
  protected static int b()
  {
    if (i != null) {
      return ih;
    }
    return -1;
  }
  
  private static String b(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    case 4: 
    case 6: 
    default: 
      return "unknown";
    case 8: 
      return "running";
    case 7: 
      return "walking";
    case 2: 
      return "on foot";
    }
    return "standing";
  }
  
  public static void b(l paraml)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot use Activity Recognition Manager externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      do
      {
        return;
        if (ig) {
          break;
        }
      } while (!l.u());
      Log.w("Kahuna", "App doens't have required permissions for Activity Monitoring. Aborting request for removal of updates!");
      return;
    } while (!ic);
    try
    {
      KahunaIBeaconManager.c();
      i.d();
      if (ie.a() != null)
      {
        if.a(ie.a());
        ie.a().cancel();
      }
      ie = null;
      if = null;
    }
    catch (Throwable paraml)
    {
      for (;;)
      {
        if (l.u())
        {
          Log.w("Kahuna", "Caught error when attempting to remove ActivityMonitoring Updates.");
          Log.w("Kahuna", paraml);
        }
      }
    }
    ic = false;
  }
  
  protected static void c()
  {
    if ((ie != null) && (KahunaIBeaconManager.a())) {
      ie.b();
    }
  }
  
  private void d()
  {
    if (e == null) {
      e = new b(d);
    }
    if (f == null) {
      f = new a(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */