package com.kahuna.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

public class q
{
  private static q a;
  private a b = new a(null);
  private long c = -1L;
  private boolean d = false;
  private Object e = new Object();
  private m f;
  private Timer g;
  private boolean h = false;
  private long i = -1L;
  
  protected static void a(Context paramContext)
  {
    try
    {
      q localq = c();
      if (d) {
        return;
      }
      Object localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("com.kahuna.sdk.broadcast.FIND_MY_DEVICE");
      ((IntentFilter)localObject).addAction("com.kahuna.sdk.broadcast.SDK_COMMAND");
      paramContext.registerReceiver(b, (IntentFilter)localObject);
      d = true;
      localObject = s.m(paramContext);
      h = ((JSONObject)localObject).optBoolean("debug_logging_override", false);
      i = ((JSONObject)localObject).optLong("debug_logging_expiration_time", -1L);
      l.a(b(paramContext));
      return;
    }
    catch (Exception paramContext)
    {
      if (l.a) {
        Log.d("Kahuna", "Handled exception in FindMyDevice " + paramContext);
      }
    }
  }
  
  protected static void a(Context paramContext, String paramString)
  {
    int j = 0;
    if (w.a(paramString)) {
      return;
    }
    for (;;)
    {
      String[] arrayOfString;
      q localq;
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
        localq = c();
        if (!"t".equals(arrayOfString[1])) {
          break label150;
        }
        h = true;
        i = (System.currentTimeMillis() / 1000L + 86400L);
        l.a(h);
        localq.c(paramContext);
      }
      catch (Exception paramContext) {}
      if (!l.a) {
        break;
      }
      Log.d("Kahuna", "Handled exception processing injected SDK command: " + paramContext);
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
    q localq = c();
    c = -1L;
    try
    {
      if (f == null)
      {
        f = new m();
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
        localq.getClass();
        localTimer.schedule(new b(localq, paramString1, paramString2, paramBoolean), 0L);
        return;
      }
      return;
    }
    catch (Exception paramString1)
    {
      if (l.a) {
        Log.d("Kahuna", "Handled exception attempting to schedule monitor request " + paramString1);
      }
    }
  }
  
  protected static boolean a()
  {
    q localq = c();
    return (c > 0L) && (System.currentTimeMillis() / 1000L < c);
  }
  
  protected static void b()
  {
    try
    {
      q localq = c();
      c = (System.currentTimeMillis() / 1000L + 3600L);
      if (l.a) {
        Log.d("Kahuna", "Setting expire time of findMyDevice broadcast to " + c);
      }
      return;
    }
    catch (Exception localException)
    {
      while (!l.a) {}
      Log.d("Kahuna", "Handled exception in FindMyDevice Broadcast Receiver " + localException);
    }
  }
  
  private static void b(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("secret_key");
    String str2;
    if (str1 != null)
    {
      str2 = l.j().k();
      if ((str2 == null) || (str2.length() < 4)) {
        break label35;
      }
    }
    label35:
    label251:
    for (;;)
    {
      return;
      if (w.a(str2.substring(0, 4), "SHA-1", true).equals(str1))
      {
        str2 = paramIntent.getAction();
        if ("com.kahuna.sdk.broadcast.FIND_MY_DEVICE".equals(str2)) {
          b();
        }
        for (;;)
        {
          if (!l.a) {
            break label251;
          }
          Log.d("Kahuna", "Received Companion App command: " + paramIntent.getAction());
          return;
          if ("com.kahuna.sdk.broadcast.SDK_COMMAND".equals(str2))
          {
            str2 = paramIntent.getStringExtra("com.kahuna.sdk.internal_hash");
            if (w.a(str2)) {
              break;
            }
            long l = System.currentTimeMillis() / 1000L / 5L;
            String str3 = w.a("com.kahuna.sdk.internal_broadcasts" + String.valueOf(l), "SHA-1", true);
            String str4 = w.a("com.kahuna.sdk.internal_broadcasts" + String.valueOf(l + 1L), "SHA-1", true);
            if (((!str2.equals(str3)) && (!str2.equals(str4))) || (w.a(str1))) {
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
    q localq = c();
    if ((h) && (System.currentTimeMillis() / 1000L > i))
    {
      h = false;
      i = -1L;
      localq.c(paramContext);
    }
    return h;
  }
  
  private static q c()
  {
    if (a == null) {
      a = new q();
    }
    return a;
  }
  
  private void c(Context paramContext)
  {
    try
    {
      JSONObject localJSONObject = s.m(paramContext);
      localJSONObject.put("debug_logging_override", h);
      localJSONObject.put("debug_logging_expiration_time", i);
      s.a(localJSONObject, paramContext);
      return;
    }
    catch (Exception paramContext)
    {
      while (!l.a) {}
      Log.d("Kahuna", "Handled exception processing request to enable debug logs " + paramContext);
    }
  }
  
  private class a
    extends BroadcastReceiver
  {
    private a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        q.a(paramContext, paramIntent);
        return;
      }
      catch (Exception paramContext)
      {
        Log.e("Kahuna", "KahunaSDK wasn't initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior");
        paramContext.printStackTrace();
      }
    }
  }
  
  private class b
    extends TimerTask
  {
    private String b;
    private String c;
    private boolean d;
    
    public b(String paramString1, String paramString2, boolean paramBoolean)
    {
      b = paramString1;
      c = paramString2;
      d = paramBoolean;
    }
    
    public void run()
    {
      try
      {
        RequestParams localRequestParams = new RequestParams();
        localRequestParams.put("key", b);
        localRequestParams.put("dev_id", c);
        if (d) {}
        for (Object localObject = "s";; localObject = "p")
        {
          localRequestParams.put("env", (String)localObject);
          long l = System.currentTimeMillis() / 1000L;
          localRequestParams.put("monitoring_key", l + 86400L + "kah");
          if (l.a) {
            Log.d("Kahuna", "Sending monitor request: " + localRequestParams);
          }
          String str = l.j().t();
          localObject = str;
          if (str == null) {
            localObject = "https://tap-nexus.appspot.com";
          }
          q.a(q.this).a((String)localObject + "/" + "monitor_device", localRequestParams, new n()
          {
            public void a(String paramAnonymousString)
            {
              if (l.a) {
                Log.d("Kahuna", "Successfully sent monitor request: " + paramAnonymousString);
              }
            }
            
            public void a(Throwable paramAnonymousThrowable, String paramAnonymousString)
            {
              super.a(paramAnonymousThrowable, paramAnonymousString);
              if (l.a) {
                Log.d("Kahuna", "Failed to send monitor request: " + paramAnonymousString, paramAnonymousThrowable);
              }
            }
          });
          return;
        }
        return;
      }
      catch (Exception localException)
      {
        if (l.a) {
          Log.d("Kahuna", "Caught exception in Send Monitor Request Task handler: " + localException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */