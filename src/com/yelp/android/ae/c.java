package com.yelp.android.ae;

import com.yelp.android.ai.e;
import java.util.HashMap;
import java.util.Map;

public class c
{
  private static final e a = new e();
  private final Map<e, b<?, ?>> b = new HashMap();
  
  public <T, Z> b<T, Z> a(Class<T> paramClass, Class<Z> paramClass1)
  {
    synchronized (a)
    {
      a.a(paramClass, paramClass1);
      paramClass1 = (b)b.get(a);
      paramClass = paramClass1;
      if (paramClass1 == null) {
        paramClass = d.e();
      }
      return paramClass;
    }
  }
  
  public <T, Z> void a(Class<T> paramClass, Class<Z> paramClass1, b<T, Z> paramb)
  {
    b.put(new e(paramClass, paramClass1), paramb);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ae.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */