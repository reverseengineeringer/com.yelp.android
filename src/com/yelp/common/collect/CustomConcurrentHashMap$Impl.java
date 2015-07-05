package com.yelp.common.collect;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

class CustomConcurrentHashMap$Impl<K, V, E>
  extends AbstractMap<K, V>
  implements Serializable, ConcurrentMap<K, V>
{
  static final int MAXIMUM_CAPACITY = 1073741824;
  static final int MAX_SEGMENTS = 65536;
  static final int RETRIES_BEFORE_LOCK = 2;
  private static final long serialVersionUID = 1L;
  Set<Map.Entry<K, V>> entrySet;
  Set<K> keySet;
  final int segmentMask;
  final int segmentShift;
  final Impl<K, V, E>[].Segment segments;
  final d<K, V, E> strategy;
  Collection<V> values;
  
  CustomConcurrentHashMap$Impl(d<K, V, E> paramd, CustomConcurrentHashMap.Builder paramBuilder)
  {
    int i = paramBuilder.getConcurrencyLevel();
    int m = paramBuilder.getInitialCapacity();
    if (i > 65536) {}
    for (;;)
    {
      i = 1;
      int k = 0;
      while (i < j)
      {
        i <<= 1;
        k += 1;
      }
      segmentShift = (32 - k);
      segmentMask = (i - 1);
      segments = newSegmentArray(i);
      if (m > 1073741824) {}
      for (j = 1073741824;; j = m)
      {
        k = j / i;
        if (k * i < j) {}
        for (j = k + 1;; j = k)
        {
          i = 1;
          while (i < j) {
            i <<= 1;
          }
          j = 0;
          while (j < segments.length)
          {
            segments[j] = new CustomConcurrentHashMap.Impl.Segment(this, i);
            j += 1;
          }
          strategy = paramd;
          paramd.setInternals(new CustomConcurrentHashMap.Impl.InternalsImpl(this));
          return;
        }
      }
      j = i;
    }
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    int j = 65536;
    int m;
    int i;
    int k;
    try
    {
      m = paramObjectInputStream.readInt();
      i = paramObjectInputStream.readInt();
      localObject = (d)paramObjectInputStream.readObject();
      if (i <= 65536) {
        break label192;
      }
    }
    catch (IllegalAccessException paramObjectInputStream)
    {
      Object localObject;
      label83:
      throw new AssertionError(paramObjectInputStream);
    }
    CustomConcurrentHashMap.Impl.Fields.segmentShift.set(this, Integer.valueOf(32 - k));
    CustomConcurrentHashMap.Impl.Fields.segmentMask.set(this, Integer.valueOf(i - 1));
    CustomConcurrentHashMap.Impl.Fields.segments.set(this, newSegmentArray(i));
    if (m > 1073741824)
    {
      k = 1073741824;
      m = k / i;
      j = m;
      if (m * i >= k) {
        break label217;
      }
      j = m + 1;
    }
    for (;;)
    {
      if (j < segments.length)
      {
        segments[j] = new CustomConcurrentHashMap.Impl.Segment(this, i);
        j += 1;
      }
      else
      {
        CustomConcurrentHashMap.Impl.Fields.strategy.set(this, localObject);
        for (;;)
        {
          localObject = paramObjectInputStream.readObject();
          if (localObject == null) {
            return;
          }
          put(localObject, paramObjectInputStream.readObject());
        }
        k = m;
        break label83;
        label192:
        j = i;
        i = 1;
        k = 0;
        while (i < j)
        {
          i <<= 1;
          k += 1;
        }
        break;
        label217:
        i = 1;
        while (i < j) {
          i <<= 1;
        }
        j = 0;
      }
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(size());
    paramObjectOutputStream.writeInt(segments.length);
    paramObjectOutputStream.writeObject(strategy);
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
    paramObjectOutputStream.writeObject(null);
  }
  
  public void clear()
  {
    CustomConcurrentHashMap.Impl.Segment[] arrayOfSegment = segments;
    int j = arrayOfSegment.length;
    int i = 0;
    while (i < j)
    {
      arrayOfSegment[i].clear();
      i += 1;
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("key");
    }
    int i = hash(paramObject);
    return segmentFor(i).containsKey(paramObject, i);
  }
  
  public boolean containsValue(Object paramObject)
  {
    int n = 0;
    int m = 0;
    if (paramObject == null) {
      throw new NullPointerException("value");
    }
    CustomConcurrentHashMap.Impl.Segment[] arrayOfSegment = segments;
    int[] arrayOfInt = new int[arrayOfSegment.length];
    int i = 0;
    if (i < 2)
    {
      j = 0;
      int k = 0;
      while (j < arrayOfSegment.length)
      {
        int i1 = count;
        i1 = modCount;
        arrayOfInt[j] = i1;
        k += i1;
        if (arrayOfSegment[j].containsValue(paramObject)) {
          return true;
        }
        j += 1;
      }
      if (k == 0) {
        break label287;
      }
      j = 0;
      label110:
      if (j >= arrayOfSegment.length) {
        break label287;
      }
      k = count;
      if (arrayOfInt[j] == modCount) {}
    }
    label287:
    for (int j = 0;; j = 1)
    {
      if (j != 0)
      {
        return false;
        j += 1;
        break label110;
      }
      i += 1;
      break;
      j = arrayOfSegment.length;
      i = 0;
      while (i < j)
      {
        arrayOfSegment[i].lock();
        i += 1;
      }
      for (;;)
      {
        try
        {
          j = arrayOfSegment.length;
          i = 0;
          if (i < j)
          {
            bool = arrayOfSegment[i].containsValue(paramObject);
            if (bool)
            {
              bool = true;
              j = arrayOfSegment.length;
              i = m;
              if (i < j)
              {
                arrayOfSegment[i].unlock();
                i += 1;
                continue;
              }
            }
            else
            {
              i += 1;
              continue;
            }
            return bool;
          }
        }
        finally
        {
          j = arrayOfSegment.length;
          i = n;
          if (i < j)
          {
            arrayOfSegment[i].unlock();
            i += 1;
            continue;
          }
        }
        boolean bool = false;
      }
    }
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    Object localObject = entrySet;
    if (localObject != null) {
      return (Set<Map.Entry<K, V>>)localObject;
    }
    localObject = new CustomConcurrentHashMap.Impl.EntrySet(this);
    entrySet = ((Set)localObject);
    return (Set<Map.Entry<K, V>>)localObject;
  }
  
  public V get(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("key");
    }
    int i = hash(paramObject);
    return (V)segmentFor(i).get(paramObject, i);
  }
  
  int hash(Object paramObject)
  {
    return CustomConcurrentHashMap.a(strategy.hashKey(paramObject));
  }
  
  public boolean isEmpty()
  {
    CustomConcurrentHashMap.Impl.Segment[] arrayOfSegment = segments;
    int[] arrayOfInt = new int[arrayOfSegment.length];
    int i = 0;
    int j = 0;
    while (i < arrayOfSegment.length)
    {
      if (count != 0) {
        return false;
      }
      int k = modCount;
      arrayOfInt[i] = k;
      j += k;
      i += 1;
    }
    if (j != 0)
    {
      i = 0;
      for (;;)
      {
        if (i >= arrayOfSegment.length) {
          break label104;
        }
        if ((count != 0) || (arrayOfInt[i] != modCount)) {
          break;
        }
        i += 1;
      }
    }
    label104:
    return true;
  }
  
  public Set<K> keySet()
  {
    Object localObject = keySet;
    if (localObject != null) {
      return (Set<K>)localObject;
    }
    localObject = new CustomConcurrentHashMap.Impl.KeySet(this);
    keySet = ((Set)localObject);
    return (Set<K>)localObject;
  }
  
  Impl<K, V, E>[].Segment newSegmentArray(int paramInt)
  {
    return (CustomConcurrentHashMap.Impl.Segment[])Array.newInstance(CustomConcurrentHashMap.Impl.Segment.class, paramInt);
  }
  
  public V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key");
    }
    if (paramV == null) {
      throw new NullPointerException("value");
    }
    int i = hash(paramK);
    return (V)segmentFor(i).put(paramK, i, paramV, false);
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public V putIfAbsent(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key");
    }
    if (paramV == null) {
      throw new NullPointerException("value");
    }
    int i = hash(paramK);
    return (V)segmentFor(i).put(paramK, i, paramV, true);
  }
  
  public V remove(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("key");
    }
    int i = hash(paramObject);
    return (V)segmentFor(i).remove(paramObject, i);
  }
  
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      throw new NullPointerException("key");
    }
    int i = hash(paramObject1);
    return segmentFor(i).remove(paramObject1, i, paramObject2);
  }
  
  public V replace(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key");
    }
    if (paramV == null) {
      throw new NullPointerException("value");
    }
    int i = hash(paramK);
    return (V)segmentFor(i).replace(paramK, i, paramV);
  }
  
  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    if (paramK == null) {
      throw new NullPointerException("key");
    }
    if (paramV1 == null) {
      throw new NullPointerException("oldValue");
    }
    if (paramV2 == null) {
      throw new NullPointerException("newValue");
    }
    int i = hash(paramK);
    return segmentFor(i).replace(paramK, i, paramV1, paramV2);
  }
  
  Impl<K, V, E>.Segment segmentFor(int paramInt)
  {
    return segments[(paramInt >>> segmentShift & segmentMask)];
  }
  
  public int size()
  {
    CustomConcurrentHashMap.Impl.Segment[] arrayOfSegment = segments;
    int[] arrayOfInt = new int[arrayOfSegment.length];
    int i = 0;
    long l2 = 0L;
    long l1 = 0L;
    long l3;
    int j;
    if (i < 2)
    {
      l3 = 0L;
      l1 = 0L;
      int k = 0;
      j = 0;
      while (j < arrayOfSegment.length)
      {
        l1 += count;
        int m = modCount;
        arrayOfInt[j] = m;
        k += m;
        j += 1;
      }
      l2 = l3;
      if (k != 0)
      {
        j = 0;
        label93:
        l2 = l3;
        if (j < arrayOfSegment.length)
        {
          l3 += count;
          if (arrayOfInt[j] != modCount)
          {
            l2 = -1L;
            label136:
            if (l2 != l1) {
              break label188;
            }
          }
        }
      }
    }
    for (;;)
    {
      l3 = l1;
      if (l2 != l1)
      {
        j = arrayOfSegment.length;
        i = 0;
        for (;;)
        {
          if (i < j)
          {
            arrayOfSegment[i].lock();
            i += 1;
            continue;
            j += 1;
            break label93;
            label188:
            i += 1;
            break;
          }
        }
        j = arrayOfSegment.length;
        l1 = 0L;
        i = 0;
        while (i < j)
        {
          l2 = count;
          i += 1;
          l1 = l2 + l1;
        }
        j = arrayOfSegment.length;
        i = 0;
        for (;;)
        {
          l3 = l1;
          if (i >= j) {
            break;
          }
          arrayOfSegment[i].unlock();
          i += 1;
        }
      }
      if (l3 > 2147483647L) {
        return Integer.MAX_VALUE;
      }
      return (int)l3;
      break label136;
    }
  }
  
  public Collection<V> values()
  {
    Object localObject = values;
    if (localObject != null) {
      return (Collection<V>)localObject;
    }
    localObject = new CustomConcurrentHashMap.Impl.Values(this);
    values = ((Collection)localObject);
    return (Collection<V>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */