package com.kahuna.sdk;

import android.os.Bundle;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class y
{
  private static y f;
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
        if ((str != null) && (h.i() != null))
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
      Log.e("KahunaAnalytics", "Caught exception when checking pending in-app message on activity start: " + localException);
    }
  }
  
  private static void a(String arg0, long paramLong, Bundle paramBundle, JSONObject paramJSONObject)
  {
    y localy = b();
    Map localMap;
    Iterator localIterator;
    if (System.currentTimeMillis() / 1000L < paramLong)
    {
      if (paramJSONObject == null) {
        break label232;
      }
      localMap = h.e();
      localIterator = paramJSONObject.keys();
      if (!localIterator.hasNext()) {
        break label226;
      }
    }
    for (;;)
    {
      try
      {
        String str1 = (String)localIterator.next();
        String str2 = (String)paramJSONObject.opt(str1);
        if ((aj.a(str1)) || (aj.a(str2)) || (!localMap.containsKey(str1))) {
          break;
        }
        boolean bool = str2.equals(localMap.get(str1));
        if (!bool) {
          break;
        }
        i = 0;
        if (i != 0)
        {
          if (h.a) {
            Log.d("KahunaAnalytics", "In-App Message recieved, but was restricted due to non-matching user not logged into the app");
          }
          return;
        }
        if (h.a) {
          Log.d("KahunaAnalytics", "Calling in-app message listener");
        }
        h.i().a(???, paramBundle);
        synchronized (a)
        {
          b = null;
          c = null;
          d = 0L;
          e = null;
          return;
        }
        if (!h.a) {
          continue;
        }
        Log.d("KahunaAnalytics", "Supressing in-app message due to expiration time");
        continue;
      }
      catch (Exception localException) {}
      label226:
      int i = 1;
      continue;
      label232:
      i = 0;
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
        if (!aj.a(str1))
        {
          ???.remove("k_m");
          ???.remove("k_t");
          localJSONObject = ???.optJSONObject("k_c");
          if ((localJSONObject == null) && (???.has("k_c")))
          {
            if (!h.a) {
              continue;
            }
            Log.d("KahunaAnalytics", "In-App Message recieved, but was restricted due to non-matching user not logged into the app");
          }
        }
      }
      catch (Exception ???)
      {
        Log.e("KahunaAnalytics", "Caught exception in handle InAppMessage Response handler: " + ???);
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
    if (h.i() != null)
    {
      a(str1, l, localBundle, localJSONObject);
      return;
    }
    if (h.a) {
      Log.d("KahunaAnalytics", "In-App Message recieved, but no listener exists. Holding message until: " + l);
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
  
  private static y b()
  {
    if (f == null) {
      f = new y();
    }
    return f;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */