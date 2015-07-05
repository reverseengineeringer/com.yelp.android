package com.kahuna.sdk;

import android.util.Log;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class c
{
  private String a;
  private int b = -1;
  private int c = -1;
  private Object d = new Object();
  private List<d> e;
  
  protected c(String paramString)
  {
    if ((aj.a(paramString)) && (h.a))
    {
      Log.w("KahunaAnalytics", "You must specify a valid name for the event builder. Ignoring event");
      Thread.dumpStack();
    }
    a = paramString;
  }
  
  public Event a()
  {
    if (aj.a(a)) {
      return null;
    }
    Event localEvent1 = new Event(a, System.currentTimeMillis() / 1000L, null, null, null, null);
    if ((b != -1) && (c != -1))
    {
      localEvent1.a(b);
      localEvent1.b(c);
    }
    JSONArray localJSONArray;
    for (;;)
    {
      JSONObject localJSONObject;
      synchronized (d)
      {
        if (e == null) {
          break label293;
        }
        localJSONArray = new JSONArray();
        Iterator localIterator = e.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        d locald = (d)localIterator.next();
        boolean bool = locald.a();
        if (!bool) {
          continue;
        }
        try
        {
          localJSONObject = new JSONObject();
          if (d.a(locald) != null) {
            break label247;
          }
          localJSONObject.put("c", "");
          localJSONObject.put("i", d.b(locald));
          if (d.c(locald) == null) {
            break label263;
          }
          localJSONObject.put("s", d.c(locald));
          localJSONArray.put(localJSONObject);
        }
        catch (Exception localException) {}
        if (!h.a) {
          continue;
        }
        Log.w("KahunaAnalytics", "Exception when building event from event builder: " + localException);
      }
      label247:
      localJSONObject.put("c", d.a(localException));
      continue;
      label263:
      if (d.d(localException) != null) {
        localJSONObject.put("v", d.d(localException));
      }
    }
    localEvent2.a(localJSONArray);
    label293:
    return localEvent2;
  }
  
  public c a(int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */