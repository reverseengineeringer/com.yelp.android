package com.yelp.android.g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class f<K, V>
{
  f<K, V>.b b;
  f<K, V>.c c;
  f<K, V>.e d;
  
  public static <K, V> boolean a(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!paramMap.containsKey(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public static <T> boolean a(Set<T> paramSet, Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1 = false;
    if (paramSet == paramObject) {
      bool1 = true;
    }
    while (!(paramObject instanceof Set)) {
      return bool1;
    }
    paramObject = (Set)paramObject;
    try
    {
      if (paramSet.size() == ((Set)paramObject).size())
      {
        bool1 = paramSet.containsAll((Collection)paramObject);
        if (!bool1) {}
      }
      for (bool1 = bool2;; bool1 = false) {
        return bool1;
      }
      return false;
    }
    catch (ClassCastException paramSet)
    {
      return false;
    }
    catch (NullPointerException paramSet) {}
  }
  
  public static <K, V> boolean b(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      paramMap.remove(paramCollection.next());
    }
    return i != paramMap.size();
  }
  
  public static <K, V> boolean c(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext()) {
      if (!paramCollection.contains(localIterator.next())) {
        localIterator.remove();
      }
    }
    return i != paramMap.size();
  }
  
  protected abstract int a();
  
  protected abstract int a(Object paramObject);
  
  protected abstract Object a(int paramInt1, int paramInt2);
  
  protected abstract V a(int paramInt, V paramV);
  
  protected abstract void a(int paramInt);
  
  protected abstract void a(K paramK, V paramV);
  
  public <T> T[] a(T[] paramArrayOfT, int paramInt)
  {
    int j = a();
    if (paramArrayOfT.length < j) {
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    }
    for (;;)
    {
      int i = 0;
      while (i < j)
      {
        paramArrayOfT[i] = a(i, paramInt);
        i += 1;
      }
      if (paramArrayOfT.length > j) {
        paramArrayOfT[j] = null;
      }
      return paramArrayOfT;
    }
  }
  
  protected abstract int b(Object paramObject);
  
  protected abstract Map<K, V> b();
  
  public Object[] b(int paramInt)
  {
    int j = a();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = a(i, paramInt);
      i += 1;
    }
    return arrayOfObject;
  }
  
  protected abstract void c();
  
  public Set<Map.Entry<K, V>> d()
  {
    if (b == null) {
      b = new b();
    }
    return b;
  }
  
  public Set<K> e()
  {
    if (c == null) {
      c = new c();
    }
    return c;
  }
  
  public Collection<V> f()
  {
    if (d == null) {
      d = new e();
    }
    return d;
  }
  
  final class a<T>
    implements Iterator<T>
  {
    final int a;
    int b;
    int c;
    boolean d = false;
    
    a(int paramInt)
    {
      a = paramInt;
      b = a();
    }
    
    public boolean hasNext()
    {
      return c < b;
    }
    
    public T next()
    {
      Object localObject = a(c, a);
      c += 1;
      d = true;
      return (T)localObject;
    }
    
    public void remove()
    {
      if (!d) {
        throw new IllegalStateException();
      }
      c -= 1;
      b -= 1;
      d = false;
      a(c);
    }
  }
  
  final class b
    implements Set<Map.Entry<K, V>>
  {
    b() {}
    
    public boolean a(Map.Entry<K, V> paramEntry)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
    {
      int i = a();
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramCollection.next();
        a(localEntry.getKey(), localEntry.getValue());
      }
      return i != a();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry)) {}
      int i;
      do
      {
        return false;
        paramObject = (Map.Entry)paramObject;
        i = a(((Map.Entry)paramObject).getKey());
      } while (i < 0);
      return b.a(a(i, 1), ((Map.Entry)paramObject).getValue());
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
      return f.a(this, paramObject);
    }
    
    public int hashCode()
    {
      int j = a() - 1;
      int i = 0;
      if (j >= 0)
      {
        Object localObject1 = a(j, 0);
        Object localObject2 = a(j, 1);
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
      return a() == 0;
    }
    
    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new f.d(f.this);
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
      return a();
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
  
  final class c
    implements Set<K>
  {
    c() {}
    
    public boolean add(K paramK)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends K> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      return a(paramObject) >= 0;
    }
    
    public boolean containsAll(Collection<?> paramCollection)
    {
      return f.a(b(), paramCollection);
    }
    
    public boolean equals(Object paramObject)
    {
      return f.a(this, paramObject);
    }
    
    public int hashCode()
    {
      int i = a() - 1;
      int j = 0;
      if (i >= 0)
      {
        Object localObject = a(i, 0);
        if (localObject == null) {}
        for (int k = 0;; k = localObject.hashCode())
        {
          j += k;
          i -= 1;
          break;
        }
      }
      return j;
    }
    
    public boolean isEmpty()
    {
      return a() == 0;
    }
    
    public Iterator<K> iterator()
    {
      return new f.a(f.this, 0);
    }
    
    public boolean remove(Object paramObject)
    {
      int i = a(paramObject);
      if (i >= 0)
      {
        a(i);
        return true;
      }
      return false;
    }
    
    public boolean removeAll(Collection<?> paramCollection)
    {
      return f.b(b(), paramCollection);
    }
    
    public boolean retainAll(Collection<?> paramCollection)
    {
      return f.c(b(), paramCollection);
    }
    
    public int size()
    {
      return a();
    }
    
    public Object[] toArray()
    {
      return b(0);
    }
    
    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return a(paramArrayOfT, 0);
    }
  }
  
  final class d
    implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
  {
    int a = a() - 1;
    int b = -1;
    boolean c = false;
    
    d() {}
    
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
      if ((b.a(((Map.Entry)paramObject).getKey(), a(b, 0))) && (b.a(((Map.Entry)paramObject).getValue(), a(b, 1)))) {}
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
      return (K)a(b, 0);
    }
    
    public V getValue()
    {
      if (!c) {
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
      }
      return (V)a(b, 1);
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
      Object localObject1 = a(b, 0);
      Object localObject2 = a(b, 1);
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
      a(b);
      b -= 1;
      a -= 1;
      c = false;
    }
    
    public V setValue(V paramV)
    {
      if (!c) {
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
      }
      return (V)a(b, paramV);
    }
    
    public final String toString()
    {
      return getKey() + "=" + getValue();
    }
  }
  
  final class e
    implements Collection<V>
  {
    e() {}
    
    public boolean add(V paramV)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean addAll(Collection<? extends V> paramCollection)
    {
      throw new UnsupportedOperationException();
    }
    
    public void clear()
    {
      c();
    }
    
    public boolean contains(Object paramObject)
    {
      return b(paramObject) >= 0;
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
    
    public boolean isEmpty()
    {
      return a() == 0;
    }
    
    public Iterator<V> iterator()
    {
      return new f.a(f.this, 1);
    }
    
    public boolean remove(Object paramObject)
    {
      int i = b(paramObject);
      if (i >= 0)
      {
        a(i);
        return true;
      }
      return false;
    }
    
    public boolean removeAll(Collection<?> paramCollection)
    {
      int i = 0;
      int j = a();
      boolean bool = false;
      while (i < j)
      {
        int m = i;
        int k = j;
        if (paramCollection.contains(a(i, 1)))
        {
          a(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public boolean retainAll(Collection<?> paramCollection)
    {
      int i = 0;
      int j = a();
      boolean bool = false;
      while (i < j)
      {
        int m = i;
        int k = j;
        if (!paramCollection.contains(a(i, 1)))
        {
          a(i);
          m = i - 1;
          k = j - 1;
          bool = true;
        }
        i = m + 1;
        j = k;
      }
      return bool;
    }
    
    public int size()
    {
      return a();
    }
    
    public Object[] toArray()
    {
      return b(1);
    }
    
    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return a(paramArrayOfT, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.g.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */