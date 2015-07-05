package com.kahuna.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.yelp.android.ao.a;
import java.util.Timer;
import org.json.JSONObject;

public class aa
{
  private static aa a;
  private ac b = new ac(this, null);
  private long c = -1L;
  private boolean d = false;
  private Object e = new Object();
  private a f;
  private Timer g;
  private boolean h = false;
  private long i = -1L;
  
  protected static void a(Context paramContext)
  {
    try
    {
      aa localaa = c();
      if (d) {
        return;
      }
      Object localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("com.kahuna.sdk.broadcast.FIND_MY_DEVICE");
      ((IntentFilter)localObject).addAction("com.kahuna.sdk.broadcast.SDK_COMMAND");
      paramContext.registerReceiver(b, (IntentFilter)localObject);
      d = true;
      localObject = ag.l(paramContext);
      h = ((JSONObject)localObject).optBoolean("debug_logging_override", false);
      i = ((JSONObject)localObject).optLong("debug_logging_expiration_time", -1L);
      h.a(b(paramContext));
      return;
    }
    catch (Exception paramContext)
    {
      if (h.a) {
        Log.d("KahunaAnalytics", "Handled exception in FindMyDevice " + paramContext);
      }
    }
  }
  
  protected static void a(Context paramContext, String paramString)
  {
    int j = 0;
    if (aj.a(paramString)) {
      return;
    }
    for (;;)
    {
      String[] arrayOfString;
      aa localaa;
      try
      {
        paramString = paramString.split(",");
        int k = paramString.length;
        if (j >= k) {
          break;
        }
        arrayOfString = paramString[j].split("=");
        if ((arrayOfString.length != 2) || (!"dbg".equals(arrayOfString[0]))) {
          break label179;
        }
        localaa = c();
        if (!"t".equals(arrayOfString[1])) {
          break label150;
        }
        h = true;
        i = (System.currentTimeMillis() / 1000L + 86400L);
        h.a(h);
        localaa.c(paramContext);
      }
      catch (Exception paramContext) {}
      if (!h.a) {
        break;
      }
      Log.d("KahunaAnalytics", "Handled exception processing injected SDK command: " + paramContext);
      paramContext.printStackTrace();
      return;
      label150:
      if ("f".equals(arrayOfString[1]))
      {
        h = false;
        i = -1L;
        continue;
        label179:
        j += 1;
      }
    }
  }
  
  protected static void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    aa localaa = c();
    c = -1L;
    try
    {
      if (f == null)
      {
        f = new a();
        f.a(15000);
      }
      synchronized (e)
      {
        if (g != null)
        {
          g.cancel();
          g = null;
        }
        g = new Timer();
        Timer localTimer = g;
        localaa.getClass();
        localTimer.schedule(new ad(localaa, paramString1, paramString2, paramBoolean), 0L);
        return;
      }
      return;
    }
    catch (Exception paramString1)
    {
      if (h.a) {
        Log.d("KahunaAnalytics", "Handled exception attempting to schedule monitor request " + paramString1);
      }
    }
  }
  
  protected static boolean a()
  {
    aa localaa = c();
    return (c > 0L) && (System.currentTimeMillis() / 1000L < c);
  }
  
  protected static void b()
  {
    try
    {
      aa localaa = c();
      c = (System.currentTimeMillis() / 1000L + 3600L);
      if (h.a) {
        Log.d("KahunaAnalytics", "Setting expire time of findMyDevice broadcast to " + c);
      }
      return;
    }
    catch (Exception localException)
    {
      while (!h.a) {}
      Log.d("KahunaAnalytics", "Handled exception in FindMyDevice Broadcast Receiver " + localException);
    }
  }
  
  private static void b(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("secret_key");
    String str2;
    if (str1 != null)
    {
      str2 = h.b();
      if ((str2 == null) || (str2.length() < 4)) {
        break label32;
      }
    }
    label32:
    label247:
    for (;;)
    {
      return;
      if (aj.a(str2.substring(0, 4), "SHA-1", true).equals(str1))
      {
        str2 = paramIntent.getAction();
        if ("com.kahuna.sdk.broadcast.FIND_MY_DEVICE".equals(str2)) {
          b();
        }
        for (;;)
        {
          if (!h.a) {
            break label247;
          }
          Log.d("KahunaAnalytics", "Received Companion App command: " + paramIntent.getAction());
          return;
          if ("com.kahuna.sdk.broadcast.SDK_COMMAND".equals(str2))
          {
            str2 = paramIntent.getStringExtra("com.kahuna.sdk.internal_hash");
            if (aj.a(str2)) {
              break;
            }
            long l = System.currentTimeMillis() / 1000L / 5L;
            String str3 = aj.a("com.kahuna.sdk.internal_broadcasts" + String.valueOf(l), "SHA-1", true);
            String str4 = aj.a("com.kahuna.sdk.internal_broadcasts" + String.valueOf(l + 1L), "SHA-1", true);
            if (((!str2.equals(str3)) && (!str2.equals(str4))) || (aj.a(str1))) {
              break;
            }
            a(paramContext, paramIntent.getStringExtra("cmd"));
          }
        }
      }
    }
  }
  
  protected static boolean b(Context paramContext)
  {
    aa localaa = c();
    if ((h) && (System.currentTimeMillis() / 1000L > i))
    {
      h = false;
      i = -1L;
      localaa.c(paramContext);
    }
    return h;
  }
  
  private static aa c()
  {
    if (a == null) {
      a = new aa();
    }
    return a;
  }
  
  private void c(Context paramContext)
  {
    try
    {
      JSONObject localJSONObject = ag.l(paramContext);
      localJSONObject.put("debug_logging_override", h);
      localJSONObject.put("debug_logging_expiration_time", i);
      ag.a(localJSONObject, paramContext);
      return;
    }
    catch (Exception paramContext)
    {
      while (!h.a) {}
      Log.d("KahunaAnalytics", "Handled exception processing request to enable debug logs " + paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */