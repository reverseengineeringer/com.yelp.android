package com.google.android.gms.measurement;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class d
{
  private final g a;
  private final jt b;
  private boolean c;
  private long d;
  private long e;
  private long f;
  private long g;
  private long h;
  private boolean i;
  private final Map<Class<? extends f>, f> j;
  private final List<j> k;
  
  d(d paramd)
  {
    a = a;
    b = b;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    k = new ArrayList(k);
    j = new HashMap(j.size());
    paramd = j.entrySet().iterator();
    while (paramd.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramd.next();
      f localf = c((Class)localEntry.getKey());
      ((f)localEntry.getValue()).a(localf);
      j.put(localEntry.getKey(), localf);
    }
  }
  
  d(g paramg, jt paramjt)
  {
    zzx.zzz(paramg);
    zzx.zzz(paramjt);
    a = paramg;
    b = paramjt;
    g = 1800000L;
    h = 3024000000L;
    j = new HashMap();
    k = new ArrayList();
  }
  
  private static <T extends f> T c(Class<T> paramClass)
  {
    try
    {
      paramClass = (f)paramClass.newInstance();
      return paramClass;
    }
    catch (InstantiationException paramClass)
    {
      throw new IllegalArgumentException("dataType doesn't have default constructor", paramClass);
    }
    catch (IllegalAccessException paramClass)
    {
      throw new IllegalArgumentException("dataType default constructor is not accessible", paramClass);
    }
  }
  
  public d a()
  {
    return new d(this);
  }
  
  public <T extends f> T a(Class<T> paramClass)
  {
    return (f)j.get(paramClass);
  }
  
  public void a(long paramLong)
  {
    e = paramLong;
  }
  
  public void a(f paramf)
  {
    zzx.zzz(paramf);
    Class localClass = paramf.getClass();
    if (localClass.getSuperclass() != f.class) {
      throw new IllegalArgumentException();
    }
    paramf.a(b(localClass));
  }
  
  public <T extends f> T b(Class<T> paramClass)
  {
    f localf2 = (f)j.get(paramClass);
    f localf1 = localf2;
    if (localf2 == null)
    {
      localf1 = c(paramClass);
      j.put(paramClass, localf1);
    }
    return localf1;
  }
  
  public Collection<f> b()
  {
    return j.values();
  }
  
  public List<j> c()
  {
    return k;
  }
  
  public long d()
  {
    return d;
  }
  
  public void e()
  {
    i().a(this);
  }
  
  public boolean f()
  {
    return c;
  }
  
  void g()
  {
    f = b.b();
    if (e != 0L) {}
    for (d = e;; d = b.a())
    {
      c = true;
      return;
    }
  }
  
  g h()
  {
    return a;
  }
  
  h i()
  {
    return a.o();
  }
  
  boolean j()
  {
    return i;
  }
  
  void k()
  {
    i = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */