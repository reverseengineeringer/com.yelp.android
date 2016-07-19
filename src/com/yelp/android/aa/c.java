package com.yelp.android.aa;

import android.content.Context;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class c
{
  private static final l c = new l()
  {
    public com.yelp.android.w.c a(Object paramAnonymousObject, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      throw new NoSuchMethodError("This should never be called!");
    }
    
    public String toString()
    {
      return "NULL_MODEL_LOADER";
    }
  };
  private final Map<Class, Map<Class, m>> a = new HashMap();
  private final Map<Class, Map<Class, l>> b = new HashMap();
  private final Context d;
  
  public c(Context paramContext)
  {
    d = paramContext.getApplicationContext();
  }
  
  private <T, Y> void a(Class<T> paramClass, Class<Y> paramClass1, l<T, Y> paraml)
  {
    Map localMap = (Map)b.get(paramClass);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new HashMap();
      b.put(paramClass, localObject);
    }
    ((Map)localObject).put(paramClass1, paraml);
  }
  
  private <T, Y> void b(Class<T> paramClass, Class<Y> paramClass1)
  {
    a(paramClass, paramClass1, c);
  }
  
  private <T, Y> l<T, Y> c(Class<T> paramClass, Class<Y> paramClass1)
  {
    paramClass = (Map)b.get(paramClass);
    if (paramClass != null) {
      return (l)paramClass.get(paramClass1);
    }
    return null;
  }
  
  private <T, Y> m<T, Y> d(Class<T> paramClass, Class<Y> paramClass1)
  {
    Object localObject1 = (Map)a.get(paramClass);
    if (localObject1 != null) {}
    for (localObject1 = (m)((Map)localObject1).get(paramClass1);; localObject1 = null)
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
            localObject2 = (m)((Map)localObject2).get(paramClass1);
            localObject1 = localObject2;
            if (localObject2 != null) {
              return (m<T, Y>)localObject2;
            }
          }
        }
      }
      return (m<T, Y>)localObject1;
    }
  }
  
  public <T, Y> l<T, Y> a(Class<T> paramClass, Class<Y> paramClass1)
  {
    for (;;)
    {
      l locall;
      try
      {
        locall = c(paramClass, paramClass1);
        if (locall != null)
        {
          boolean bool = c.equals(locall);
          paramClass = locall;
          if (bool) {
            paramClass = null;
          }
          return paramClass;
        }
        m localm = d(paramClass, paramClass1);
        if (localm != null)
        {
          locall = localm.a(d, this);
          a(paramClass, paramClass1, locall);
          paramClass = locall;
          continue;
        }
        b(paramClass, paramClass1);
      }
      finally {}
      paramClass = locall;
    }
  }
  
  public <T, Y> m<T, Y> a(Class<T> paramClass, Class<Y> paramClass1, m<T, Y> paramm)
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
      paramClass1 = (m)((Map)localObject).put(paramClass1, paramm);
      paramClass = paramClass1;
      if (paramClass1 != null)
      {
        paramm = a.values().iterator();
        boolean bool;
        do
        {
          paramClass = paramClass1;
          if (!paramm.hasNext()) {
            break;
          }
          bool = ((Map)paramm.next()).containsValue(paramClass1);
        } while (!bool);
        paramClass = null;
      }
      return paramClass;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */