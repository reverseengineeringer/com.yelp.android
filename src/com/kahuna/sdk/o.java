package com.kahuna.sdk;

import android.os.Bundle;
import android.util.Log;
import java.util.Iterator;
import org.json.JSONObject;

public class o
{
  private static o f;
  private Object a = new Object();
  private String b;
  private Bundle c;
  private long d;
  private JSONObject e;
  
  protected static void a()
  {
    try
    {
      Object localObject3 = b();
      synchronized (a)
      {
        String str = b;
        long l = d;
        Bundle localBundle = c;
        localObject3 = e;
        if ((str != null) && (l.m() != null))
        {
          ??? = localBundle;
          if (localBundle == null) {
            ??? = new Bundle();
          }
          a(str, l, (Bundle)???, (JSONObject)localObject3);
        }
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("Kahuna", "Caught exception when checking pending in-app message on activity start: " + localException);
    }
  }
  
  private static void a(String arg0, long paramLong, Bundle paramBundle, JSONObject paramJSONObject)
  {
    int j = 0;
    o localo = b();
    if (System.currentTimeMillis() / 1000L < paramLong)
    {
      int i = j;
      if (paramJSONObject != null)
      {
        i = j;
        if (!w.d(paramJSONObject)) {
          i = 1;
        }
      }
      if (i != 0)
      {
        if (l.a) {
          Log.d("Kahuna", "In-App Message recieved, but was restricted due to non-matching user not logged into the app");
        }
        return;
      }
      if (l.a) {
        Log.d("Kahuna", "Calling in-app message listener");
      }
      l.m().a(???, paramBundle);
    }
    for (;;)
    {
      synchronized (a)
      {
        b = null;
        c = null;
        d = 0L;
        e = null;
        return;
      }
      if (l.a) {
        Log.d("Kahuna", "Supressing in-app message due to expiration time");
      }
    }
  }
  
  protected static void a(JSONObject arg0)
  {
    if (??? == null) {}
    String str1;
    long l;
    Bundle localBundle;
    JSONObject localJSONObject;
    for (;;)
    {
      return;
      try
      {
        str1 = ???.optString("k_m");
        l = ???.optLong("k_t", System.currentTimeMillis() / 1000L + 7200L);
        localBundle = new Bundle();
        if (!w.a(str1))
        {
          ???.remove("k_m");
          ???.remove("k_t");
          localJSONObject = ???.optJSONObject("k_c");
          if ((localJSONObject == null) && (???.has("k_c")))
          {
            if (!l.a) {
              continue;
            }
            Log.d("Kahuna", "In-App Message recieved, but was restricted due to non-matching user not logged into the app");
          }
        }
      }
      catch (Exception ???)
      {
        Log.e("Kahuna", "Caught exception in handle InAppMessage Response handler: " + ???);
        return;
      }
    }
    ???.remove("k_c");
    Object localObject2 = ???.keys();
    while (((Iterator)localObject2).hasNext())
    {
      String str2 = (String)((Iterator)localObject2).next();
      Object localObject3 = ???.opt(str2);
      if (localObject3 != null) {
        if ((localObject3 instanceof Boolean)) {
          localBundle.putBoolean(str2, ((Boolean)localObject3).booleanValue());
        } else if ((localObject3 instanceof Integer)) {
          localBundle.putInt(str2, ((Integer)localObject3).intValue());
        } else if ((localObject3 instanceof Long)) {
          localBundle.putLong(str2, ((Long)localObject3).longValue());
        } else if ((localObject3 instanceof Float)) {
          localBundle.putFloat(str2, ((Float)localObject3).floatValue());
        } else if ((localObject3 instanceof Double)) {
          localBundle.putDouble(str2, ((Double)localObject3).doubleValue());
        } else {
          localBundle.putString(str2, localObject3.toString());
        }
      }
    }
    localObject2 = b();
    if (l.m() != null)
    {
      a(str1, l, localBundle, localJSONObject);
      return;
    }
    if (l.a) {
      Log.d("Kahuna", "In-App Message recieved, but no listener exists. Holding message until: " + l);
    }
    synchronized (a)
    {
      b = str1;
      c = localBundle;
      d = l;
      e = localJSONObject;
      return;
    }
  }
  
  private static o b()
  {
    if (f == null) {
      f = new o();
    }
    return f;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */