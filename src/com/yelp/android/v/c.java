package com.yelp.android.v;

import android.content.Context;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class c
{
  private static final m c = new d();
  private final Map<Class, Map<Class, n>> a = new HashMap();
  private final Map<Class, Map<Class, m>> b = new HashMap();
  private final Context d;
  
  public c(Context paramContext)
  {
    d = paramContext.getApplicationContext();
  }
  
  private <T, Y> void a(Class<T> paramClass, Class<Y> paramClass1, m<T, Y> paramm)
  {
    Map localMap = (Map)b.get(paramClass);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new HashMap();
      b.put(paramClass, localObject);
    }
    ((Map)localObject).put(paramClass1, paramm);
  }
  
  private <T, Y> void b(Class<T> paramClass, Class<Y> paramClass1)
  {
    a(paramClass, paramClass1, c);
  }
  
  private <T, Y> m<T, Y> c(Class<T> paramClass, Class<Y> paramClass1)
  {
    paramClass = (Map)b.get(paramClass);
    if (paramClass != null) {
      return (m)paramClass.get(paramClass1);
    }
    return null;
  }
  
  private <T, Y> n<T, Y> d(Class<T> paramClass, Class<Y> paramClass1)
  {
    Object localObject1 = (Map)a.get(paramClass);
    if (localObject1 != null) {}
    for (localObject1 = (n)((Map)localObject1).get(paramClass1);; localObject1 = null)
    {
      Object localObject2 = localObject1;
      Iterator localIterator;
      if (localObject1 == null) {
        localIterator = a.keySet().iterator();
      }
      while (localIterator.hasNext())
      {
        localObject2 = (Class)localIterator.next();
        if (((Class)localObject2).isAssignableFrom(paramClass))
        {
          localObject2 = (Map)a.get(localObject2);
          if (localObject2 != null)
          {
            localObject2 = (n)((Map)localObject2).get(paramClass1);
            localObject1 = localObject2;
            if (localObject2 != null) {
              return (n<T, Y>)localObject2;
            }
          }
        }
      }
      return (n<T, Y>)localObject1;
    }
  }
  
  public <T, Y> m<T, Y> a(Class<T> paramClass, Class<Y> paramClass1)
  {
    for (;;)
    {
      m localm;
      try
      {
        localm = c(paramClass, paramClass1);
        if (localm != null)
        {
          boolean bool = c.equals(localm);
          paramClass = localm;
          if (bool) {
            paramClass = null;
          }
          return paramClass;
        }
        n localn = d(paramClass, paramClass1);
        if (localn != null)
        {
          localm = localn.a(d, this);
          a(paramClass, paramClass1, localm);
          paramClass = localm;
          continue;
        }
        b(paramClass, paramClass1);
      }
      finally {}
      paramClass = localm;
    }
  }
  
  public <T, Y> n<T, Y> a(Class<T> paramClass, Class<Y> paramClass1, n<T, Y> paramn)
  {
    try
    {
      b.clear();
      Map localMap = (Map)a.get(paramClass);
      Object localObject = localMap;
      if (localMap == null)
      {
        localObject = new HashMap();
        a.put(paramClass, localObject);
      }
      paramClass1 = (n)((Map)localObject).put(paramClass1, paramn);
      paramClass = paramClass1;
      if (paramClass1 != null)
      {
        paramn = a.values().iterator();
        boolean bool;
        do
        {
          paramClass = paramClass1;
          if (!paramn.hasNext()) {
            break;
          }
          bool = ((Map)paramn.next()).containsValue(paramClass1);
        } while (!bool);
        paramClass = null;
      }
      return paramClass;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */