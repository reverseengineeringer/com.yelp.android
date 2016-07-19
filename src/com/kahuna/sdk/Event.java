package com.kahuna.sdk;

import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Event
  implements Comparable<Event>
{
  private String a;
  private long b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private int h = -1;
  private int i = -1;
  private int j = -1;
  private int k = 0;
  private long l = -1L;
  
  protected Event(Event paramEvent)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    g = g;
    e = e;
    k = k;
    h = h;
    i = i;
  }
  
  protected Event(String paramString)
  {
    a = paramString;
    b = (System.currentTimeMillis() / 1000L);
  }
  
  protected Event(String paramString, long paramLong)
  {
    a = paramString;
    b = paramLong;
  }
  
  protected static Event a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    Object localObject1;
    if (paramJSONObject == null)
    {
      localObject1 = null;
      return (Event)localObject1;
    }
    label402:
    label405:
    label408:
    label411:
    for (;;)
    {
      try
      {
        Object localObject2 = paramJSONObject.getString("event");
        long l1 = paramJSONObject.getLong("time");
        localObject1 = paramJSONObject.optString("credentials");
        if (!"".equals(localObject1)) {
          break label411;
        }
        localObject1 = null;
        String str1 = paramJSONObject.optString("user_info");
        if (!"".equals(str1)) {
          break label408;
        }
        str1 = null;
        String str2 = paramJSONObject.optString("location");
        if (!"".equals(str2)) {
          break label405;
        }
        str2 = null;
        String str3 = paramJSONObject.optString("properties");
        if (!"".equals(str3)) {
          break label402;
        }
        str3 = null;
        String str4 = paramJSONObject.optString("tracking_id");
        if ("".equals(str4))
        {
          str4 = null;
          int m = paramJSONObject.optInt("count", -1);
          int n = paramJSONObject.optInt("value", -1);
          int i1 = paramJSONObject.optInt("push_launch_override", -1);
          int i2 = paramJSONObject.optInt("event_count", 0);
          long l2 = paramJSONObject.optLong("event_number", -1L);
          localObject2 = new Event((String)localObject2, l1);
          g = str4;
          c = ((String)localObject1);
          d = str1;
          e = str2;
          f = str3;
          if (m != -1) {
            h = m;
          }
          if (n != -1) {
            i = n;
          }
          if (i1 != -1) {
            j = i1;
          }
          if (l2 > 0L) {
            l = l2;
          }
          k = i2;
          localObject1 = localObject2;
          if (paramBoolean) {
            break;
          }
          str1 = paramJSONObject.optString("event_hash");
          localObject1 = localObject2;
          if (w.a(str1)) {
            break;
          }
          localObject1 = localObject2;
          if (b(paramJSONObject).equals(str1)) {
            break;
          }
          throw new EventHashMismatchException("Detected corrupted archived event: " + paramJSONObject.toString());
        }
      }
      catch (Exception localException)
      {
        if (l.a) {
          Log.d("Kahuna", "Exception building KAEvent from JSONObject: " + paramJSONObject + " andException:" + localException);
        }
        return null;
      }
      continue;
      continue;
      continue;
    }
  }
  
  private static Map<String, String> a(JSONObject paramJSONObject, String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (paramJSONObject != null)
    {
      JSONArray localJSONArray = paramJSONObject.names();
      int m = 0;
      while (m < localJSONArray.length())
      {
        String str2 = localJSONArray.optString(m);
        if (str2.length() > 0)
        {
          String str1 = paramString + "_" + str2;
          str2 = paramJSONObject.optString(str2);
          if (!w.a(str2)) {
            localHashMap.put(str1, str1 + ":" + str2);
          }
        }
        m += 1;
      }
    }
    return localHashMap;
  }
  
  protected static String b(JSONObject paramJSONObject)
  {
    Object localObject = new TreeMap();
    if (paramJSONObject != null)
    {
      if (paramJSONObject.has("count")) {
        ((TreeMap)localObject).put("count", "count:" + paramJSONObject.optString("count"));
      }
      if (paramJSONObject.optJSONObject("credentials") != null) {
        ((TreeMap)localObject).putAll(a(paramJSONObject.optJSONObject("credentials"), "credentials"));
      }
      if (paramJSONObject.has("event")) {
        ((TreeMap)localObject).put("event", "event:" + paramJSONObject.optString("event"));
      }
      if (paramJSONObject.has("event_count")) {
        ((TreeMap)localObject).put("event_count", "event_count:" + paramJSONObject.optString("event_count"));
      }
      if (paramJSONObject.has("event_number")) {
        ((TreeMap)localObject).put("event_number", "event_number:" + paramJSONObject.optString("event_number"));
      }
      if (paramJSONObject.optJSONObject("location") != null) {
        ((TreeMap)localObject).putAll(a(paramJSONObject.optJSONObject("location"), "location"));
      }
      if (paramJSONObject.optJSONObject("properties") != null) {
        ((TreeMap)localObject).putAll(a(paramJSONObject.optJSONObject("properties"), "properties"));
      }
      if (paramJSONObject.has("time")) {
        ((TreeMap)localObject).put("time", "time:" + paramJSONObject.optString("time"));
      }
      if (paramJSONObject.has("tracking_id")) {
        ((TreeMap)localObject).put("tracking_id", "tracking_id:" + paramJSONObject.optString("tracking_id"));
      }
      if (paramJSONObject.optJSONObject("user_info") != null) {
        ((TreeMap)localObject).putAll(a(paramJSONObject.optJSONObject("user_info"), "user_info"));
      }
      if (paramJSONObject.has("value")) {
        ((TreeMap)localObject).put("value", "value:" + paramJSONObject.optString("value"));
      }
    }
    paramJSONObject = new ArrayList();
    localObject = ((TreeMap)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext()) {
      paramJSONObject.add(((Map.Entry)((Iterator)localObject).next()).getValue());
    }
    return w.a(TextUtils.join("|", paramJSONObject), "MD5", false);
  }
  
  public int a(Event paramEvent)
  {
    if (b < b) {
      return -1;
    }
    if (b > b) {
      return 1;
    }
    return 0;
  }
  
  protected String a()
  {
    return a;
  }
  
  protected void a(int paramInt)
  {
    h = paramInt;
  }
  
  protected void a(long paramLong)
  {
    l = paramLong;
  }
  
  protected void a(String paramString)
  {
    a = paramString;
  }
  
  protected void a(Map<String, Set<String>> paramMap)
  {
    if (!w.a(paramMap))
    {
      JSONObject localJSONObject = new JSONObject();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        try
        {
          localJSONObject.put(str, new JSONArray((Set)paramMap.get(str)));
        }
        catch (Exception localException) {}
        if (l.a) {
          Log.d("Kahuna", "Exception building user credentials string from Map: " + paramMap + " andException:" + localException);
        }
      }
      c = localJSONObject.toString();
      return;
    }
    c = null;
  }
  
  protected void a(JSONObject paramJSONObject)
  {
    if (!w.a(paramJSONObject))
    {
      f = paramJSONObject.toString();
      return;
    }
    f = null;
  }
  
  protected long b()
  {
    return b;
  }
  
  protected void b(int paramInt)
  {
    i = paramInt;
  }
  
  protected void b(String paramString)
  {
    g = paramString;
  }
  
  protected void b(Map<String, String> paramMap)
  {
    if (!w.a(paramMap))
    {
      d = new JSONObject(paramMap).toString();
      return;
    }
    d = null;
  }
  
  protected void c()
  {
    j = 1;
  }
  
  protected void c(Map<String, Object> paramMap)
  {
    if (!w.a(paramMap))
    {
      e = new JSONObject(paramMap).toString();
      return;
    }
    e = null;
  }
  
  protected String d()
  {
    return c;
  }
  
  protected boolean e()
  {
    return !w.a(f);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Event))
    {
      paramObject = (Event)paramObject;
      if ((!w.a(a)) && (!w.a(a))) {
        break label34;
      }
    }
    label34:
    while ((!a.equals(a)) || (b != b)) {
      return false;
    }
    return true;
  }
  
  protected int f()
  {
    return h;
  }
  
  protected int g()
  {
    return i;
  }
  
  protected JSONObject h()
  {
    try
    {
      if (!w.a(f))
      {
        JSONObject localJSONObject = new JSONObject(f);
        return localJSONObject;
      }
    }
    catch (JSONException localJSONException)
    {
      if (l.a) {
        Log.d("Kahuna", "Exception building EventProperties from JSON String: " + f + " andException:" + localJSONException);
      }
    }
    return null;
  }
  
  protected boolean i()
  {
    return k > 0;
  }
  
  protected void j()
  {
    k += 1;
  }
  
  protected long k()
  {
    return l;
  }
  
  protected JSONObject l()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("event", a);
      localJSONObject.put("time", b);
      if (c != null) {
        localJSONObject.put("credentials", new JSONObject(c));
      }
      if (d != null) {
        localJSONObject.put("user_info", new JSONObject(d));
      }
      if (e != null) {
        localJSONObject.put("location", new JSONObject(e));
      }
      if (f != null) {
        localJSONObject.put("properties", new JSONObject(f));
      }
      if (g != null) {
        localJSONObject.put("tracking_id", g);
      }
      if (h != -1) {
        localJSONObject.put("count", h);
      }
      if (i != -1) {
        localJSONObject.put("value", i);
      }
      if (j != -1) {
        localJSONObject.put("push_launch_override", j);
      }
      if (k > 0) {
        localJSONObject.put("event_count", k);
      }
      if (l > 0L) {
        localJSONObject.put("event_number", l);
      }
      String str = b(localJSONObject);
      if (str.length() > 0) {
        localJSONObject.put("event_hash", str);
      }
      return localJSONObject;
    }
    catch (Exception localException)
    {
      if (l.a) {
        Log.d("Kahuna", "Exception getting JSON representation for KAEvent: " + localException);
      }
    }
    return null;
  }
  
  public String toString()
  {
    return "KAEvent: name: " + a + " creationDate: " + b;
  }
  
  private static class EventHashMismatchException
    extends Exception
  {
    private static final long serialVersionUID = 1L;
    
    public EventHashMismatchException(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */