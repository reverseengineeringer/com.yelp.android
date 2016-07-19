package com.yelp.android.aa;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class j
  implements e
{
  private final Map<String, List<i>> c;
  private volatile Map<String, String> d;
  
  j(Map<String, List<i>> paramMap)
  {
    c = Collections.unmodifiableMap(paramMap);
  }
  
  private Map<String, String> b()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      List localList = (List)localEntry.getValue();
      int i = 0;
      while (i < localList.size())
      {
        localStringBuilder.append(((i)localList.get(i)).a());
        if (i != localList.size() - 1) {
          localStringBuilder.append(',');
        }
        i += 1;
      }
      localHashMap.put(localEntry.getKey(), localStringBuilder.toString());
    }
    return localHashMap;
  }
  
  public Map<String, String> a()
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = Collections.unmodifiableMap(b());
      }
      return d;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof j))
    {
      paramObject = (j)paramObject;
      return c.equals(c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return c.hashCode();
  }
  
  public String toString()
  {
    return "LazyHeaders{headers=" + c + '}';
  }
  
  public static final class a
  {
    private static final String a = System.getProperty("http.agent");
    private static final Map<String, List<i>> b;
    private boolean c = true;
    private boolean d = true;
    private Map<String, List<i>> e = b;
    private boolean f = e.containsKey(a);
    
    static
    {
      HashMap localHashMap = new HashMap(2);
      if (!TextUtils.isEmpty(a)) {
        localHashMap.put("User-Agent", Collections.singletonList(new j.b(a)));
      }
      localHashMap.put("Accept-Encoding", Collections.singletonList(new j.b("identity")));
      b = Collections.unmodifiableMap(localHashMap);
    }
    
    public j a()
    {
      c = true;
      return new j(e);
    }
  }
  
  static final class b
    implements i
  {
    private final String a;
    
    b(String paramString)
    {
      a = paramString;
    }
    
    public String a()
    {
      return a;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        return a.equals(a);
      }
      return false;
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
    
    public String toString()
    {
      return "StringHeaderFactory{value='" + a + '\'' + '}';
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */