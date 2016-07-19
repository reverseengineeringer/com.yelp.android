package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.internal.f;
import com.google.android.gms.analytics.internal.n;
import com.yelp.android.bg.a;
import com.yelp.android.bg.b;
import com.yelp.android.bg.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class d$c<T extends c>
{
  b a;
  Map<String, List<a>> b = new HashMap();
  List<c> c = new ArrayList();
  List<a> d = new ArrayList();
  private Map<String, String> e = new HashMap();
  
  public T a(int paramInt, String paramString)
  {
    a(j.a(paramInt), paramString);
    return this;
  }
  
  public final T a(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      e.put(paramString1, paramString2);
      return this;
    }
    f.c(" HitBuilder.set() called with a null paramName.");
    return this;
  }
  
  public Map<String, String> a()
  {
    HashMap localHashMap = new HashMap(e);
    if (a != null) {
      localHashMap.putAll(a.a());
    }
    Iterator localIterator = c.iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((c)localIterator.next()).a(j.f(i)));
      i += 1;
    }
    localIterator = d.iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((a)localIterator.next()).a(j.d(i)));
      i += 1;
    }
    localIterator = b.entrySet().iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (List)localEntry.getValue();
      String str = j.i(i);
      localObject = ((List)localObject).iterator();
      int j = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((a)((Iterator)localObject).next()).a(str + j.h(j)));
        j += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getKey())) {
        localHashMap.put(str + "nm", localEntry.getKey());
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public T d(String paramString)
  {
    paramString = n.c(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = n.a(paramString);
    a("&cc", (String)paramString.get("utm_content"));
    a("&cm", (String)paramString.get("utm_medium"));
    a("&cn", (String)paramString.get("utm_campaign"));
    a("&cs", (String)paramString.get("utm_source"));
    a("&ck", (String)paramString.get("utm_term"));
    a("&ci", (String)paramString.get("utm_id"));
    a("&anid", (String)paramString.get("anid"));
    a("&gclid", (String)paramString.get("gclid"));
    a("&dclid", (String)paramString.get("dclid"));
    a("&aclid", (String)paramString.get("aclid"));
    a("&gmob_t", (String)paramString.get("gmob_t"));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */