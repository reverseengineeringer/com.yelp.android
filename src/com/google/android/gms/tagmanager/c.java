package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class c
{
  public static final Object a = new Object();
  static final String[] b = "gtm.lifetime".toString().split("\\.");
  private static final Pattern c = Pattern.compile("(\\d+)\\s*([smhd]?)");
  private final ConcurrentHashMap<b, Integer> d;
  private final Map<String, Object> e;
  private final ReentrantLock f;
  private final LinkedList<Map<String, Object>> g;
  private final c h;
  private final CountDownLatch i;
  
  c()
  {
    this(new c()
    {
      public void a(c.c.a paramAnonymousa)
      {
        paramAnonymousa.a(new ArrayList());
      }
      
      public void a(List<c.a> paramAnonymousList, long paramAnonymousLong) {}
    });
  }
  
  c(c paramc)
  {
    h = paramc;
    d = new ConcurrentHashMap();
    e = new HashMap();
    f = new ReentrantLock();
    g = new LinkedList();
    i = new CountDownLatch(1);
    a();
  }
  
  static Long a(String paramString)
  {
    Object localObject = c.matcher(paramString);
    if (!((Matcher)localObject).matches())
    {
      m.c("unknown _lifetime: " + paramString);
      return null;
    }
    long l;
    try
    {
      l = Long.parseLong(((Matcher)localObject).group(1));
      if (l <= 0L)
      {
        m.c("non-positive _lifetime: " + paramString);
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        m.b("illegal number in _lifetime value: " + paramString);
        l = 0L;
      }
      localObject = ((Matcher)localObject).group(2);
      if (((String)localObject).length() == 0) {
        return Long.valueOf(l);
      }
      switch (((String)localObject).charAt(0))
      {
      default: 
        m.b("unknown units in _lifetime: " + paramString);
        return null;
      }
    }
    return Long.valueOf(l * 1000L);
    return Long.valueOf(l * 1000L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L * 24L);
  }
  
  private void a()
  {
    h.a(new c.c.a()
    {
      public void a(List<c.a> paramAnonymousList)
      {
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext())
        {
          c.a locala = (c.a)paramAnonymousList.next();
          c.a(c.this, a(a, b));
        }
        c.a(c.this).countDown();
      }
    });
  }
  
  private void a(Map<String, Object> paramMap, String paramString, Collection<a> paramCollection)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder().append(paramString);
      if (paramString.length() == 0) {}
      for (paramMap = "";; paramMap = ".")
      {
        paramMap = paramMap + (String)localEntry.getKey();
        if (!(localEntry.getValue() instanceof Map)) {
          break label119;
        }
        a((Map)localEntry.getValue(), paramMap, paramCollection);
        break;
      }
      label119:
      if (!paramMap.equals("gtm.lifetime")) {
        paramCollection.add(new a(paramMap, localEntry.getValue()));
      }
    }
  }
  
  private void b()
  {
    int j = 0;
    for (;;)
    {
      Map localMap = (Map)g.poll();
      if (localMap != null)
      {
        g(localMap);
        j += 1;
        if (j > 500)
        {
          g.clear();
          throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
        }
      }
      else
      {
        return;
      }
    }
  }
  
  private void b(Map<String, Object> paramMap)
  {
    f.lock();
    try
    {
      g.offer(paramMap);
      if (f.getHoldCount() == 1) {
        b();
      }
      c(paramMap);
      return;
    }
    finally
    {
      f.unlock();
    }
  }
  
  private void c(Map<String, Object> paramMap)
  {
    Long localLong = d(paramMap);
    if (localLong == null) {
      return;
    }
    paramMap = f(paramMap);
    paramMap.remove("gtm.lifetime");
    h.a(paramMap, localLong.longValue());
  }
  
  private Long d(Map<String, Object> paramMap)
  {
    paramMap = e(paramMap);
    if (paramMap == null) {
      return null;
    }
    return a(paramMap.toString());
  }
  
  private Object e(Map<String, Object> paramMap)
  {
    String[] arrayOfString = b;
    int k = arrayOfString.length;
    int j = 0;
    for (;;)
    {
      Object localObject = paramMap;
      if (j < k)
      {
        localObject = arrayOfString[j];
        if (!(paramMap instanceof Map)) {
          localObject = null;
        }
      }
      else
      {
        return localObject;
      }
      paramMap = ((Map)paramMap).get(localObject);
      j += 1;
    }
  }
  
  private List<a> f(Map<String, Object> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramMap, "", localArrayList);
    return localArrayList;
  }
  
  private void g(Map<String, Object> paramMap)
  {
    synchronized (e)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(a(str, paramMap.get(str)), e);
      }
    }
    h(paramMap);
  }
  
  private void h(Map<String, Object> paramMap)
  {
    Iterator localIterator = d.keySet().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramMap);
    }
  }
  
  Map<String, Object> a(String paramString, Object paramObject)
  {
    HashMap localHashMap1 = new HashMap();
    String[] arrayOfString = paramString.toString().split("\\.");
    int j = 0;
    HashMap localHashMap2;
    for (paramString = localHashMap1; j < arrayOfString.length - 1; paramString = localHashMap2)
    {
      localHashMap2 = new HashMap();
      paramString.put(arrayOfString[j], localHashMap2);
      j += 1;
    }
    paramString.put(arrayOfString[(arrayOfString.length - 1)], paramObject);
    return localHashMap1;
  }
  
  void a(b paramb)
  {
    d.put(paramb, Integer.valueOf(0));
  }
  
  void a(List<Object> paramList1, List<Object> paramList2)
  {
    while (paramList2.size() < paramList1.size()) {
      paramList2.add(null);
    }
    int j = 0;
    if (j < paramList1.size())
    {
      Object localObject = paramList1.get(j);
      if ((localObject instanceof List))
      {
        if (!(paramList2.get(j) instanceof List)) {
          paramList2.set(j, new ArrayList());
        }
        a((List)localObject, (List)paramList2.get(j));
      }
      for (;;)
      {
        j += 1;
        break;
        if ((localObject instanceof Map))
        {
          if (!(paramList2.get(j) instanceof Map)) {
            paramList2.set(j, new HashMap());
          }
          a((Map)localObject, (Map)paramList2.get(j));
        }
        else if (localObject != a)
        {
          paramList2.set(j, localObject);
        }
      }
    }
  }
  
  public void a(Map<String, Object> paramMap)
  {
    try
    {
      i.await();
      b(paramMap);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        m.b("DataLayer.push: unexpected InterruptedException");
      }
    }
  }
  
  void a(Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    Iterator localIterator = paramMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap1.get(str);
      if ((localObject instanceof List))
      {
        if (!(paramMap2.get(str) instanceof List)) {
          paramMap2.put(str, new ArrayList());
        }
        a((List)localObject, (List)paramMap2.get(str));
      }
      else if ((localObject instanceof Map))
      {
        if (!(paramMap2.get(str) instanceof Map)) {
          paramMap2.put(str, new HashMap());
        }
        a((Map)localObject, (Map)paramMap2.get(str));
      }
      else
      {
        paramMap2.put(str, localObject);
      }
    }
  }
  
  public String toString()
  {
    synchronized (e)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = e.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", new Object[] { localEntry.getKey(), localEntry.getValue() }));
      }
    }
    String str = ((StringBuilder)localObject).toString();
    return str;
  }
  
  static final class a
  {
    public final String a;
    public final Object b;
    
    a(String paramString, Object paramObject)
    {
      a = paramString;
      b = paramObject;
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof a)) {}
      do
      {
        return false;
        paramObject = (a)paramObject;
      } while ((!a.equals(a)) || (!b.equals(b)));
      return true;
    }
    
    public int hashCode()
    {
      return Arrays.hashCode(new Integer[] { Integer.valueOf(a.hashCode()), Integer.valueOf(b.hashCode()) });
    }
    
    public String toString()
    {
      return "Key: " + a + " value: " + b.toString();
    }
  }
  
  static abstract interface b
  {
    public abstract void a(Map<String, Object> paramMap);
  }
  
  static abstract interface c
  {
    public abstract void a(a parama);
    
    public abstract void a(List<c.a> paramList, long paramLong);
    
    public static abstract interface a
    {
      public abstract void a(List<c.a> paramList);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */