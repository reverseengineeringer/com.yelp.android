package com.yelp.android.g;

import java.util.Iterator;
import java.util.Map.Entry;

final class f$d
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int a;
  int b;
  boolean c = false;
  
  f$d(f paramf)
  {
    a = (paramf.a() - 1);
    b = -1;
  }
  
  public Map.Entry<K, V> a()
  {
    b += 1;
    c = true;
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    if (!(paramObject instanceof Map.Entry)) {
      return false;
    }
    paramObject = (Map.Entry)paramObject;
    if ((b.a(((Map.Entry)paramObject).getKey(), d.a(b, 0))) && (b.a(((Map.Entry)paramObject).getValue(), d.a(b, 1)))) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public K getKey()
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (K)d.a(b, 0);
  }
  
  public V getValue()
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)d.a(b, 1);
  }
  
  public boolean hasNext()
  {
    return b < a;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    Object localObject1 = d.a(b, 0);
    Object localObject2 = d.a(b, 1);
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label69;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label69:
      j = localObject2.hashCode();
    }
  }
  
  public void remove()
  {
    if (!c) {
      throw new IllegalStateException();
    }
    d.a(b);
    b -= 1;
    a -= 1;
    c = false;
  }
  
  public V setValue(V paramV)
  {
    if (!c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)d.a(b, paramV);
  }
  
  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.g.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */