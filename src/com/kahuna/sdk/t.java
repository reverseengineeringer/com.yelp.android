package com.kahuna.sdk;

import android.content.Context;
import android.util.Log;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class t
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
  private int n = 25;
  private Map<String, Map<String, String>> o;
  private Map<String, Map<String, String>> p;
  private JSONObject q = null;
  private int r = 100;
  
  protected static t a(Context paramContext)
  {
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = s.j(paramContext);
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
        t localt = new t();
        localt.a(l1);
        localt.b(d1);
        localt.b(l2);
        localt.a(paramContext);
        localt.b(i1);
        localt.a(d2);
        localt.b((Set)localObject);
        localt.a(b(localJSONObject.optJSONObject("event_remapping"), new HashMap()));
        localt.d(a(localJSONObject.optJSONArray("events_to_include"), null, false));
        localt.c(a(localJSONObject.optJSONArray("events_to_exclude"), null, false));
        localt.c(localJSONObject.optInt("event_properties_max_count", 25));
        localt.b(a(localJSONObject.optJSONObject("event_properties_to_include"), new HashMap()));
        localt.c(a(localJSONObject.optJSONObject("event_properties_to_exclude"), new HashMap()));
        localt.b(localJSONObject.optJSONObject("event_bucket_config"));
        localt.a(localJSONObject.optInt("event_batch_size", 100));
        w.a();
        paramContext = localt;
      }
      catch (Exception paramContext)
      {
        Object localObject;
        if (!l.a) {
          continue;
        }
        Log.d("Kahuna", "Exception getting SDK configurations: " + paramContext);
        paramContext = null;
        w.a();
        continue;
      }
      localObject = paramContext;
      if (paramContext == null) {
        localObject = new t();
      }
      return (t)localObject;
      paramContext = b;
      continue;
      localObject = c;
      continue;
      paramContext = null;
    }
  }
  
  protected static t a(JSONObject paramJSONObject)
  {
    t localt = new t();
    if (paramJSONObject != null)
    {
      localt.a(paramJSONObject.optLong("v", 0L));
      localt.b(paramJSONObject.optDouble("t", 5.0D));
      localt.b(paramJSONObject.optLong("n", 100L));
      localt.b(paramJSONObject.optInt("ro", 5));
      localt.a(paramJSONObject.optDouble("fsd", 0.5D));
      if (paramJSONObject.has("fi")) {
        localt.a(a(paramJSONObject.optJSONArray("fi"), b, true));
      }
      if (paramJSONObject.has("fs")) {
        localt.b(a(paramJSONObject.optJSONArray("fs"), c, true));
      }
      localt.a(b(paramJSONObject.optJSONObject("mapev"), new HashMap()));
      if (!paramJSONObject.has("incev")) {
        break label288;
      }
      localt.d(a(paramJSONObject.optJSONArray("incev"), null, false));
    }
    for (;;)
    {
      if (paramJSONObject.has("epmc")) {
        localt.c(paramJSONObject.optInt("epmc", 25));
      }
      if (paramJSONObject.has("incev_p")) {
        localt.b(a(paramJSONObject.optJSONObject("incev_p"), new HashMap()));
      }
      if (paramJSONObject.has("execv_p")) {
        localt.c(a(paramJSONObject.optJSONObject("execv_p"), new HashMap()));
      }
      localt.b(paramJSONObject.optJSONObject("bckev"));
      localt.a(paramJSONObject.optInt("bs", 100));
      w.a();
      return localt;
      label288:
      localt.c(a(paramJSONObject.optJSONArray("excev"), null, false));
    }
  }
  
  private static Map<String, Map<String, String>> a(JSONObject paramJSONObject, Map<String, Map<String, String>> paramMap)
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
        localHashMap.put(paramMap, b(paramJSONObject.optJSONObject(paramMap), new HashMap()));
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
        if (!w.a(str))
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
  
  protected static void a(Context paramContext, t paramt)
  {
    if ((paramt == null) || (paramContext == null)) {}
    JSONObject localJSONObject;
    for (;;)
    {
      return;
      try
      {
        localJSONObject = new JSONObject();
        localJSONObject.put("version", paramt.a());
        localJSONObject.put("flush_interval_min", paramt.b());
        localJSONObject.put("flush_on_event_count", paramt.d());
        localObject1 = new JSONArray();
        localObject2 = paramt.e().iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
        }
        if (!l.a) {}
      }
      catch (Exception paramContext) {}
    }
    Log.d("Kahuna", "Exception serializing SDK config to save: " + paramContext);
    return;
    localJSONObject.put("trigger_events", localObject1);
    localJSONObject.put("retry_attempts", paramt.f());
    localJSONObject.put("flush_soon_delay_min", paramt.g());
    Object localObject1 = new JSONArray();
    Object localObject2 = paramt.i().iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
    }
    localJSONObject.put("flush_soon_events", localObject1);
    localObject1 = new JSONObject();
    localObject2 = paramt.j();
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
    localObject2 = paramt.l();
    if (localObject2 != null)
    {
      localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
      }
      localJSONObject.put("events_to_include", localObject1);
    }
    localObject1 = new JSONArray();
    localObject2 = paramt.k();
    if (localObject2 != null)
    {
      localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((JSONArray)localObject1).put((String)((Iterator)localObject2).next());
      }
      localJSONObject.put("events_to_exclude", localObject1);
    }
    localJSONObject.put("event_properties_max_count", paramt.m());
    localJSONObject.put("event_properties_to_include", new JSONObject(paramt.n()));
    localJSONObject.put("event_properties_to_exclude", new JSONObject(paramt.o()));
    if (q == null) {
      q = new JSONObject();
    }
    localJSONObject.put("event_bucket_config", q);
    localJSONObject.put("event_batch_size", paramt.q());
    s.a(paramContext, localJSONObject);
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
        if ((a(str)) && (!w.a((String)paramMap.get(str)))) {
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
    if (w.a(paramString)) {}
    do
    {
      return false;
      if (!"Start".equalsIgnoreCase(paramString)) {
        break;
      }
    } while (!l.a);
    Log.d("Kahuna", "Can't process event filterings or mappings if the name is start");
    return false;
    return w.c(paramString);
  }
  
  private boolean a(String paramString1, String paramString2, String paramString3, Map<String, Map<String, String>> paramMap)
  {
    if ((w.a(paramMap)) || (w.a(paramString1)) || (w.a(paramString2)) || (w.a(paramString3))) {
      return false;
    }
    Iterator localIterator1 = paramMap.keySet().iterator();
    String str1;
    String str2;
    do
    {
      Object localObject;
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        do
        {
          do
          {
            if (!localIterator1.hasNext()) {
              break;
            }
            localObject = (String)localIterator1.next();
          } while (!w.a((String)localObject, paramString1));
          localObject = (Map)paramMap.get(localObject);
        } while (localObject == null);
        localIterator2 = ((Map)localObject).keySet().iterator();
      }
      str1 = (String)localIterator2.next();
      str2 = (String)((Map)localObject).get(str1);
    } while ((!w.a(str1, paramString2)) || (!w.a(str2, paramString3)));
    return true;
    return false;
  }
  
  private boolean a(String paramString, Map<String, Map<String, String>> paramMap)
  {
    if (w.a(paramMap)) {
      return false;
    }
    paramMap = paramMap.keySet().iterator();
    while (paramMap.hasNext()) {
      if (w.a((String)paramMap.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  private static Map<String, String> b(JSONObject paramJSONObject, Map<String, String> paramMap)
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
  
  private void b(Map<String, Map<String, String>> paramMap)
  {
    if (paramMap != null)
    {
      o = d(paramMap);
      return;
    }
    o = null;
  }
  
  private void b(Set<String> paramSet)
  {
    j = paramSet;
  }
  
  private void c(int paramInt)
  {
    if (paramInt >= 0) {
      n = paramInt;
    }
  }
  
  private void c(Map<String, Map<String, String>> paramMap)
  {
    if (paramMap != null)
    {
      p = d(paramMap);
      return;
    }
    p = paramMap;
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
  
  private Map<String, Map<String, String>> d(Map<String, Map<String, String>> paramMap)
  {
    HashMap localHashMap1 = new HashMap();
    Iterator localIterator1 = paramMap.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Map localMap = (Map)paramMap.get(str1);
      if ((!w.a(str1)) && (!w.a(localMap)) && (w.c(str1)))
      {
        HashMap localHashMap2 = new HashMap();
        Iterator localIterator2 = localMap.keySet().iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          String str3 = (String)localMap.get(str2);
          if ((!w.a(str2)) && (!w.a(str3)) && (w.c(str2)) && (w.c(str3))) {
            localHashMap2.put(str2, str3);
          }
        }
        if (!w.a(localHashMap2)) {
          localHashMap1.put(str1, localHashMap2);
        }
      }
    }
    return localHashMap1;
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
    r = paramInt;
    if (r < 1) {
      r = 1;
    }
    for (;;)
    {
      if (r > f) {
        r = ((int)f);
      }
      return;
      if (r > 5000) {
        r = 5000;
      }
    }
  }
  
  protected void a(long paramLong)
  {
    d = paramLong;
  }
  
  protected boolean a(String paramString1, String paramString2, String paramString3)
  {
    if ((!a(paramString1, o)) && (!a(paramString1, p))) {}
    do
    {
      do
      {
        return true;
        if (!w.a(o)) {
          break;
        }
      } while ((w.a(p)) || (!a(paramString1, paramString2, paramString3, p)));
      return false;
      if (w.a(p)) {
        return a(paramString1, paramString2, paramString3, o);
      }
    } while ((a(paramString1, paramString2, paramString3, o)) && (!a(paramString1, paramString2, paramString3, p)));
    return false;
  }
  
  protected double b()
  {
    return e;
  }
  
  protected void b(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      q = new JSONObject();
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
        if (!l.a) {
          break label124;
        }
        Log.w("Kahuna", "Caught exception while trying to set event bucket config: " + paramJSONObject);
      }
      q.put(str.toLowerCase(), d2);
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
        q = null;
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
  
  protected int m()
  {
    return n;
  }
  
  protected Map<String, Map<String, String>> n()
  {
    if (o != null) {
      return o;
    }
    return new HashMap();
  }
  
  protected Map<String, Map<String, String>> o()
  {
    if (p != null) {
      return p;
    }
    return new HashMap();
  }
  
  protected JSONObject p()
  {
    if (q != null) {
      return q;
    }
    return new JSONObject();
  }
  
  protected int q()
  {
    return r;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */