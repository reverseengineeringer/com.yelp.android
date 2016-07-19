package com.kahuna.sdk;

import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class d
{
  private String a;
  private int b = -1;
  private int c = -1;
  private Object d = new Object();
  private Map<String, Set<String>> e;
  
  public d(String paramString)
  {
    if ((w.a(paramString)) && (l.a))
    {
      Log.w("Kahuna", "You must specify a valid name for the event builder. Ignoring event");
      Thread.dumpStack();
    }
    a = paramString;
  }
  
  public Event a()
  {
    if (w.a(a)) {
      return null;
    }
    Event localEvent1 = new Event(a);
    if ((b != -1) && (c != -1))
    {
      localEvent1.a(b);
      localEvent1.b(c);
    }
    JSONObject localJSONObject;
    synchronized (d)
    {
      if (e == null) {
        break label206;
      }
      localJSONObject = new JSONObject();
      Iterator localIterator = e.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          JSONArray localJSONArray = new JSONArray((Set)e.get(str));
          if (localJSONArray.length() <= 0) {
            continue;
          }
          localJSONObject.put(str, localJSONArray);
        }
        catch (Exception localException) {}
        if (l.a) {
          Log.w("Kahuna", "Exception when building event from event builder: " + localException);
        }
      }
    }
    localEvent2.a(localJSONObject);
    label206:
    return localEvent2;
  }
  
  public d a(int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    return this;
  }
  
  public d a(String paramString1, String paramString2)
  {
    if ((w.a(paramString1)) || (w.a(paramString2))) {
      if (l.a) {
        Log.w("Kahuna", "You must specify a valid Event property key and value.  They cannot be null or empty.");
      }
    }
    do
    {
      return this;
      if (!paramString1.trim().toLowerCase().startsWith("k_")) {
        break;
      }
    } while (!l.a);
    Log.w("Kahuna", "Property keys cannot begin with 'k_' those are reserved by Kahuna.");
    return this;
    synchronized (d)
    {
      if (e == null) {
        e = new HashMap();
      }
      if (!e.containsKey(paramString1)) {
        e.put(paramString1, new HashSet());
      }
      Set localSet = (Set)e.get(paramString1);
      localSet.add(paramString2);
      e.put(paramString1, localSet);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */