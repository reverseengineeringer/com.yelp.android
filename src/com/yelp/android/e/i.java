package com.yelp.android.e;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class i
  implements Set<Map.Entry<K, V>>
{
  i(g paramg) {}
  
  public boolean a(Map.Entry<K, V> paramEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
  {
    int i = a.a();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramCollection.next();
      a.a(localEntry.getKey(), localEntry.getValue());
    }
    return i != a.a();
  }
  
  public void clear()
  {
    a.c();
  }
  
  public boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    int i;
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
      i = a.a(((Map.Entry)paramObject).getKey());
    } while (i < 0);
    return c.a(a.a(i, 1), ((Map.Entry)paramObject).getValue());
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public boolean equals(Object paramObject)
  {
    return g.a(this, paramObject);
  }
  
  public int hashCode()
  {
    int j = a.a() - 1;
    int i = 0;
    if (j >= 0)
    {
      Object localObject1 = a.a(j, 0);
      Object localObject2 = a.a(j, 1);
      int k;
      if (localObject1 == null)
      {
        k = 0;
        label45:
        if (localObject2 != null) {
          break label76;
        }
      }
      label76:
      for (int m = 0;; m = localObject2.hashCode())
      {
        j -= 1;
        i += (m ^ k);
        break;
        k = localObject1.hashCode();
        break label45;
      }
    }
    return i;
  }
  
  public boolean isEmpty()
  {
    return a.a() == 0;
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new k(a);
  }
  
  public boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public int size()
  {
    return a.a();
  }
  
  public Object[] toArray()
  {
    throw new UnsupportedOperationException();
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.e.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */