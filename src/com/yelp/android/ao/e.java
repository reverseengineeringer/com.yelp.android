package com.yelp.android.ao;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class e<T, Y>
{
  private final LinkedHashMap<T, Y> a = new LinkedHashMap(100, 0.75F, true);
  private int b;
  private final int c;
  private int d = 0;
  
  public e(int paramInt)
  {
    c = paramInt;
    b = paramInt;
  }
  
  private void c()
  {
    b(b);
  }
  
  protected int a(Y paramY)
  {
    return 1;
  }
  
  public void a()
  {
    b(0);
  }
  
  protected void a(T paramT, Y paramY) {}
  
  public int b()
  {
    return d;
  }
  
  public Y b(T paramT)
  {
    return (Y)a.get(paramT);
  }
  
  public Y b(T paramT, Y paramY)
  {
    if (a(paramY) >= b)
    {
      a(paramT, paramY);
      return null;
    }
    paramT = a.put(paramT, paramY);
    if (paramY != null) {
      d += a(paramY);
    }
    if (paramT != null) {
      d -= a(paramT);
    }
    c();
    return paramT;
  }
  
  protected void b(int paramInt)
  {
    while (d > paramInt)
    {
      Object localObject2 = (Map.Entry)a.entrySet().iterator().next();
      Object localObject1 = ((Map.Entry)localObject2).getValue();
      d -= a(localObject1);
      localObject2 = ((Map.Entry)localObject2).getKey();
      a.remove(localObject2);
      a(localObject2, localObject1);
    }
  }
  
  public Y c(T paramT)
  {
    paramT = a.remove(paramT);
    if (paramT != null) {
      d -= a(paramT);
    }
    return paramT;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */