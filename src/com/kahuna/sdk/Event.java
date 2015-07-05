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
  
  protected Event(String paramString1, long paramLong, Map<String, String> paramMap1, Map<String, String> paramMap2, Map<String, Object> paramMap, String paramString2)
  {
    a = paramString1;
    b = paramLong;
    if (paramMap1 != null) {
      c = new JSONObject(paramMap1).toString();
    }
    if (paramMap2 != null) {
      d = new JSONObject(paramMap2).toString();
    }
    if (paramMap != null) {
      e = new JSONObject(paramMap).toString();
    }
    g = paramString2;
  }
  
  protected static Event a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    Object localObject1;
    if (paramJSONObject == null)
    {
      localObject1 = null;
      return (Event)localObject1;
    }
    label379:
    label382:
    label385:
    for (;;)
    {
      try
      {
        String str5 = paramJSONObject.getString("event");
        long l = paramJSONObject.getLong("time");
        localObject1 = paramJSONObject.optString("credentials");
        if (!"".equals(localObject1)) {
          break label385;
        }
        localObject1 = null;
        String str1 = paramJSONObject.optString("user_info");
        if (!"".equals(str1)) {
          break label382;
        }
        str1 = null;
        String str2 = paramJSONObject.optString("location");
        if (!"".equals(str2)) {
          break label379;
        }
        str2 = null;
        String str3 = paramJSONObject.optString("attr");
        if ("".equals(str3))
        {
          str3 = null;
          String str4 = paramJSONObject.optString("tracking_id");
          Object localObject2 = str4;
          if ("".equals(str4)) {
            localObject2 = null;
          }
          int m = paramJSONObject.optInt("count", -1);
          int n = paramJSONObject.optInt("value", -1);
          int i1 = paramJSONObject.optInt("push_launch_override", -1);
          int i2 = paramJSONObject.optInt("event_count", 0);
          localObject2 = new Event(str5, l, null, null, null, (String)localObject2);
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
          k = i2;
          localObject1 = localObject2;
          if (paramBoolean) {
            break;
          }
          str1 = paramJSONObject.optString("event_hash");
          localObject1 = localObject2;
          if (aj.a(str1)) {
            break;
          }
          localObject1 = localObject2;
          if (a(paramJSONObject).equals(str1)) {
            break;
          }
          throw new Event.EventHashMismatchException("Detected corrupted archived event: " + paramJSONObject.toString());
        }
      }
      catch (Exception localException)
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Exception building KAEvent from JSONObject: " + paramJSONObject + " andException:" + localException);
        }
        return null;
      }
      continue;
      continue;
    }
  }
  
  protected static String a(JSONObject paramJSONObject)
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
      if (paramJSONObject.optJSONObject("location") != null) {
        ((TreeMap)localObject).putAll(a(paramJSONObject.optJSONObject("location"), "location"));
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
    return aj.a(TextUtils.join("|", paramJSONObject), "MD5", false);
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
          if (!aj.a(str2)) {
            localHashMap.put(str1, str1 + ":" + str2);
          }
        }
        m += 1;
      }
    }
    return localHashMap;
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
  
  protected void a(String paramString)
  {
    a = paramString;
  }
  
  protected void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray != null)
    {
      f = paramJSONArray.toString();
      return;
    }
    f = "";
  }
  
  protected long b()
  {
    return b;
  }
  
  protected void b(int paramInt)
  {
    i = paramInt;
  }
  
  protected void c()
  {
    j = 1;
  }
  
  protected int d()
  {
    return h;
  }
  
  protected int e()
  {
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Event))
    {
      paramObject = (Event)paramObject;
      if ((!aj.a(a)) && (!aj.a(a))) {
        break label34;
      }
    }
    label34:
    while ((!a.equals(a)) || (b != b)) {
      return false;
    }
    return true;
  }
  
  protected boolean f()
  {
    return k > 0;
  }
  
  protected void g()
  {
    k += 1;
  }
  
  protected JSONObject h()
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
        localJSONObject.put("attr", new JSONArray(f));
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
      String str = a(localJSONObject);
      if (str.length() > 0) {
        localJSONObject.put("event_hash", str);
      }
      return localJSONObject;
    }
    catch (Exception localException)
    {
      if (h.a) {
        Log.d("KahunaAnalytics", "Exception getting JSON representation for KAEvent: " + localException);
      }
    }
    return null;
  }
  
  public String toString()
  {
    return "KAEvent: name: " + a + " creationDate: " + b;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */