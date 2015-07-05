package com.kahuna.sdk;

import android.content.Context;
import android.util.Log;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONObject;

public class ah
{
  protected static final Set<String> a = new HashSet(Arrays.asList(new String[] { "Start".toLowerCase() }));
  private static final HashSet<String> b = new HashSet(Arrays.asList(new String[] { "k_app_bg", "k_user_logout" }));
  private static final HashSet<String> c = new HashSet();
  private long d = 0L;
  private double e = 5.0D;
  private long f = 100L;
  private Set<String> g = b;
  private int h = 5;
  private double i = 0.5D;
  private Set<String> j = c;
  private Map<String, String> k = null;
  private Set<String> l = null;
  private Set<String> m = null;
  private JSONObject n = null;
  private int o = 100;
  
  protected static ah a(Context paramContext)
  {
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = ag.i(paramContext);
        long l1 = localJSONObject.optLong("version", 0L);
        double d1 = localJSONObject.optDouble("flush_interval_min", 5.0D);
        long l2 = localJSONObject.optLong("flush_on_event_count", 100L);
        paramContext = localJSONObject.optJSONArray("trigger_events");
        if (paramContext == null) {
          continue;
        }
        paramContext = a(paramContext, new HashSet(), true);
        int i1 = localJSONObject.optInt("retry_attempts", 5);
        double d2 = localJSONObject.optDouble("flush_soon_delay_min", 0.5D);
        localObject = localJSONObject.optJSONArray("flush_soon_events");
        if (localObject == null) {
          continue;
        }
        localObject = a((JSONArray)localObject, new HashSet(), true);
        ah localah = new ah();
        localah.a(l1);
        localah.b(d1);
        localah.b(l2);
        localah.a(paramContext);
        localah.b(i1);
        localah.a(d2);
        localah.b((Set)localObject);
        localah.a(a(localJSONObject.optJSONObject("event_remapping"), new HashMap()));
        localah.d(a(localJSONObject.optJSONArray("events_to_include"), null, false));
        localah.c(a(localJSONObject.optJSONArray("events_to_exclude"), null, false));
        localah.b(localJSONObject.optJSONObject("event_bucket_config"));
        localah.a(localJSONObject.optInt("event_batch_size", 100));
        aj.a();
        paramContext = localah;
      }
      catch (Exception paramContext)
      {
        Object localObject;
        if (!h.a) {
          continue;
        }
        Log.d("KahunaAnalytics", "Exception getting SDK configurations: " + paramContext);
        paramContext = null;
        aj.a();
        continue;
      }
      localObject = paramContext;
      if (paramContext == null) {
        localObject = new ah();
      }
      return (ah)localObject;
      paramContext = b;
      continue;
      localObject = c;
      continue;
      paramContext = null;
    }
  }
  
  protected static ah a(JSONObject paramJSONObject)
  {
    ah localah = new ah();
    if (paramJSONObject != null)
    {
      localah.a(paramJSONObject.optLong("v", 0L));
      localah.b(paramJSONObject.optDouble("t", 5.0D));
      localah.b(paramJSONObject.optLong("n", 100L));
      localah.b(paramJSONObject.optInt("ro", 5));
      localah.a(paramJSONObject.optDouble("fsd", 0.5D));
      if (paramJSONObject.has("fi")) {
        localah.a(a(paramJSONObject.optJSONArray("fi"), b, true));
      }
      if (paramJSONObject.has("fs")) {
        localah.b(a(paramJSONObject.optJSONArray("fs"), c, true));
      }
      localah.a(a(paramJSONObject.optJSONObject("mapev"), new HashMap()));
      if (!paramJSONObject.has("incev")) {
        break label196;
      }
      localah.d(a(paramJSONObject.optJSONArray("incev"), null, false));
    }
    for (;;)
    {
      localah.b(paramJSONObject.optJSONObject("bckev"));
      localah.a(paramJSONObject.optInt("bs", 100));
      aj.a();
      return localah;
      label196:
      localah.c(a(paramJSONObject.optJSONArray("excev"), null, false));
    }
  }
  
  private static Map<String, String> a(JSONObject paramJSONObject, Map<String, String> paramMap)
  {
    if (paramJSONObject != null)
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramJSONObject.keys();
      for (;;)
      {
        paramMap = localHashMap;
        if (!localIterator.hasNext()) {
          break;
        }
        paramMap = (String)localIterator.next();
        localHashMap.put(paramMap, paramJSONObject.optString(paramMap));
      }
    }
    return paramMap;
  }
  
  private static Set<String> a(JSONArray paramJSONArray, Set<String> paramSet, boolean paramBoolean)
  {
    if (paramJSONArray != null)
    {
      HashSet localHashSet = new HashSet();
      int i2 = paramJSONArray.length();
      int i1 = 0;
      for (;;)
      {
        paramSet = localHashSet;
        if (i1 >= i2) {
          break;
        }
        String str = paramJSONArray.optString(i1);
        if (!aj.a(str))
        {
          paramSet = str;
          if (paramBoolean) {
            paramSet = str.toLowerCase();
          }
          localHashSet.add(paramSet);
        }
        i1 += 1;
      }
    }
    return paramSet;
  }
  
  protected static void a(Context paramContext, ah paramah)
  {
    if ((paramah == null) || (paramContext == null)) {}
    JSONObject localJSONObject;
    for (;;)
    {
      return;
      try
      {
        localJSONObject = new JSONObject();
        localJSONObject.put("version", paramah.a());
        localJSONObject.put("flush_interval_min", paramah.b());
        localJSONObject.put("flush_on_event_count", paramah.d());
        localObject1 = new JSONArray();
        localObject2 = paramah.e().iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
        }
        if (!h.a) {}
      }
      catch (Exception paramContext) {}
    }
    Log.d("KahunaAnalytics", "Exception serializing SDK config to save: " + paramContext);
    return;
    localJSONObject.put("trigger_events", localObject1);
    localJSONObject.put("retry_attempts", paramah.f());
    localJSONObject.put("flush_soon_delay_min", paramah.g());
    Object localObject1 = new JSONArray();
    Object localObject2 = paramah.i().iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
    }
    localJSONObject.put("flush_soon_events", localObject1);
    localObject1 = new JSONObject();
    localObject2 = paramah.j();
    if (localObject2 != null)
    {
      Iterator localIterator = ((Map)localObject2).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((JSONObject)localObject1).put(str, ((Map)localObject2).get(str));
      }
    }
    localJSONObject.put("event_remapping", localObject1);
    localObject1 = new JSONArray();
    localObject2 = paramah.l();
    if (localObject2 != null)
    {
      localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
      }
      localJSONObject.put("events_to_include", localObject1);
    }
    localObject1 = new JSONArray();
    localObject2 = paramah.k();
    if (localObject2 != null)
    {
      localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
      }
      localJSONObject.put("events_to_exclude", localObject1);
    }
    if (n == null) {
      n = new JSONObject();
    }
    localJSONObject.put("event_bucket_config", n);
    localJSONObject.put("event_batch_size", paramah.n());
    ag.a(paramContext, localJSONObject);
  }
  
  private void a(Map<String, String> paramMap)
  {
    if (paramMap != null)
    {
      HashMap localHashMap = new HashMap();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((a(str)) && (!aj.a((String)paramMap.get(str)))) {
          localHashMap.put(str, paramMap.get(str));
        }
      }
      k = localHashMap;
      return;
    }
    k = paramMap;
  }
  
  private void a(Set<String> paramSet)
  {
    g = paramSet;
  }
  
  private boolean a(String paramString)
  {
    if (aj.a(paramString)) {}
    do
    {
      do
      {
        return false;
        if (!"Start".equalsIgnoreCase(paramString)) {
          break;
        }
      } while (!h.a);
      Log.d("KahunaAnalytics", "Can't process event filterings or mappings if the name is start");
      return false;
      try
      {
        Pattern.compile(paramString, 2);
        return true;
      }
      catch (PatternSyntaxException localPatternSyntaxException) {}
    } while (!h.a);
    Log.d("KahunaAnalytics", "Can't process invalid key regular expression: " + paramString);
    return false;
  }
  
  private void b(double paramDouble)
  {
    e = paramDouble;
    if (e == NaN.0D) {
      e = 5.0D;
    }
    if (e < 0.5D) {
      e = 0.5D;
    }
    while (e <= 259200.0D) {
      return;
    }
    e = 259200.0D;
  }
  
  private void b(int paramInt)
  {
    h = paramInt;
    if (h < 0) {
      h = 0;
    }
    while (h <= 30) {
      return;
    }
    h = 30;
  }
  
  private void b(long paramLong)
  {
    f = paramLong;
    if (f < 1L) {
      f = 1L;
    }
    while (f <= 5000L) {
      return;
    }
    f = 5000L;
  }
  
  private void b(Set<String> paramSet)
  {
    j = paramSet;
  }
  
  private void c(Set<String> paramSet)
  {
    if (paramSet != null)
    {
      HashSet localHashSet = new HashSet();
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        if (a(str)) {
          localHashSet.add(str);
        }
      }
      l = localHashSet;
      return;
    }
    l = paramSet;
  }
  
  private void d(Set<String> paramSet)
  {
    if (paramSet != null)
    {
      HashSet localHashSet = new HashSet();
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        if (a(str)) {
          localHashSet.add(str);
        }
      }
      m = localHashSet;
      return;
    }
    m = paramSet;
  }
  
  protected long a()
  {
    return d;
  }
  
  protected void a(double paramDouble)
  {
    i = paramDouble;
    if (i == NaN.0D) {
      i = 0.5D;
    }
    if (i < 0.5D) {
      i = 0.5D;
    }
    while (i <= 259200.0D) {
      return;
    }
    i = 259200.0D;
  }
  
  protected void a(int paramInt)
  {
    o = paramInt;
    if (o < 1) {
      o = 1;
    }
    for (;;)
    {
      if (o > f) {
        o = ((int)f);
      }
      return;
      if (o > 5000) {
        o = 5000;
      }
    }
  }
  
  protected void a(long paramLong)
  {
    d = paramLong;
  }
  
  protected double b()
  {
    return e;
  }
  
  protected void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      n = new JSONObject();
    }
    for (;;)
    {
      double d1;
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (!localIterator.hasNext()) {
          break label124;
        }
        str = (String)localIterator.next();
        d2 = paramJSONObject.optDouble(str, 0.5D);
        d1 = d2;
        if (d2 != NaN.0D) {
          break label150;
        }
        d1 = 0.5D;
      }
      catch (Exception paramJSONObject)
      {
        String str;
        if (!h.a) {
          break label124;
        }
        Log.w("KahunaAnalytics", "Caught exception while trying to set event bucket config: " + paramJSONObject);
      }
      n.put(str.toLowerCase(), d2);
      continue;
      label124:
      return;
      label150:
      do
      {
        d2 = d1;
        if (d1 <= 259200.0D) {
          break;
        }
        d2 = 259200.0D;
        break;
        n = null;
        return;
      } while (d1 >= 0.5D);
      double d2 = 0.5D;
    }
  }
  
  protected long c()
  {
    return (e * 60.0D);
  }
  
  protected long d()
  {
    return f;
  }
  
  protected Set<String> e()
  {
    if (g != null) {
      return new HashSet(g);
    }
    return new HashSet();
  }
  
  protected int f()
  {
    return h;
  }
  
  protected double g()
  {
    return i;
  }
  
  protected long h()
  {
    return (i * 60.0D);
  }
  
  protected Set<String> i()
  {
    if (j != null) {
      return new HashSet(j);
    }
    return new HashSet();
  }
  
  protected Map<String, String> j()
  {
    if (k != null) {
      return new HashMap(k);
    }
    return new HashMap();
  }
  
  protected Set<String> k()
  {
    if (l != null) {
      return new HashSet(l);
    }
    return new HashSet();
  }
  
  protected Set<String> l()
  {
    if (m != null) {
      return new HashSet(m);
    }
    return new HashSet();
  }
  
  protected JSONObject m()
  {
    if (n != null) {
      return n;
    }
    return new JSONObject();
  }
  
  protected int n()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */