package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.HashMap;
import java.util.Map;

class g<K extends n, V>
{
  private final h<K, V> a = new h();
  private final Map<K, h<K, V>> b = new HashMap();
  
  private void a(h<K, V> paramh)
  {
    d(paramh);
    b = a;
    a = a.a;
    c(paramh);
  }
  
  private void b(h<K, V> paramh)
  {
    d(paramh);
    b = a.b;
    a = a;
    c(paramh);
  }
  
  private static <K, V> void c(h<K, V> paramh)
  {
    a.b = paramh;
    b.a = paramh;
  }
  
  private static <K, V> void d(h<K, V> paramh)
  {
    b.a = a;
    a.b = b;
  }
  
  public V a()
  {
    for (h localh = a.b; !localh.equals(a); localh = b)
    {
      Object localObject = localh.a();
      if (localObject != null) {
        return (V)localObject;
      }
      d(localh);
      b.remove(h.a(localh));
      ((n)h.a(localh)).a();
    }
    return null;
  }
  
  public V a(K paramK)
  {
    h localh = (h)b.get(paramK);
    if (localh == null)
    {
      localh = new h(paramK);
      b.put(paramK, localh);
    }
    for (paramK = localh;; paramK = localh)
    {
      a(paramK);
      return (V)paramK.a();
      paramK.a();
    }
  }
  
  public void a(K paramK, V paramV)
  {
    h localh = (h)b.get(paramK);
    if (localh == null)
    {
      localh = new h(paramK);
      b(localh);
      b.put(paramK, localh);
    }
    for (paramK = localh;; paramK = localh)
    {
      paramK.a(paramV);
      return;
      paramK.a();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    h localh = a.a;
    int i = 0;
    while (!localh.equals(a))
    {
      i = 1;
      localStringBuilder.append('{').append(h.a(localh)).append(':').append(localh.b()).append("}, ");
      localh = a;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return " )";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */