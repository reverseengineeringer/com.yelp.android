package com.yelp.common.collect;

import com.yelp.common.base.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

final class CustomConcurrentHashMap
{
  private static int b(int paramInt)
  {
    paramInt = (paramInt << 15 ^ 0xCD7D) + paramInt;
    paramInt ^= paramInt >>> 10;
    paramInt += (paramInt << 3);
    paramInt ^= paramInt >>> 6;
    paramInt += (paramInt << 2) + (paramInt << 14);
    return paramInt ^ paramInt >>> 16;
  }
  
  static final class Builder
  {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final int UNSET_CONCURRENCY_LEVEL = -1;
    private static final int UNSET_INITIAL_CAPACITY = -1;
    int concurrencyLevel = -1;
    int initialCapacity = -1;
    
    public <K, V, E> ConcurrentMap<K, V> buildComputingMap(CustomConcurrentHashMap.a<K, V, E> parama, d<? super K, ? extends V> paramd)
    {
      if (parama == null) {
        throw new NullPointerException("strategy");
      }
      if (paramd == null) {
        throw new NullPointerException("computer");
      }
      return new CustomConcurrentHashMap.ComputingImpl(parama, this, paramd);
    }
    
    public <K, V, E> ConcurrentMap<K, V> buildMap(CustomConcurrentHashMap.c<K, V, E> paramc)
    {
      if (paramc == null) {
        throw new NullPointerException("strategy");
      }
      return new CustomConcurrentHashMap.Impl(paramc, this);
    }
    
    public Builder concurrencyLevel(int paramInt)
    {
      if (concurrencyLevel != -1) {
        throw new IllegalStateException("concurrency level was already set to " + concurrencyLevel);
      }
      if (paramInt <= 0) {
        throw new IllegalArgumentException();
      }
      concurrencyLevel = paramInt;
      return this;
    }
    
    int getConcurrencyLevel()
    {
      if (concurrencyLevel == -1) {
        return 16;
      }
      return concurrencyLevel;
    }
    
    int getInitialCapacity()
    {
      if (initialCapacity == -1) {
        return 16;
      }
      return initialCapacity;
    }
    
    public Builder initialCapacity(int paramInt)
    {
      if (initialCapacity != -1) {
        throw new IllegalStateException("initial capacity was already set to " + initialCapacity);
      }
      if (paramInt < 0) {
        throw new IllegalArgumentException();
      }
      initialCapacity = paramInt;
      return this;
    }
  }
  
  static class ComputingImpl<K, V, E>
    extends CustomConcurrentHashMap.Impl<K, V, E>
  {
    static final long serialVersionUID = 0L;
    final d<? super K, ? extends V> computer;
    final CustomConcurrentHashMap.a<K, V, E> computingStrategy;
    
    ComputingImpl(CustomConcurrentHashMap.a<K, V, E> parama, CustomConcurrentHashMap.Builder paramBuilder, d<? super K, ? extends V> paramd)
    {
      super(paramBuilder);
      computingStrategy = parama;
      computer = paramd;
    }
    
    public V get(Object paramObject)
    {
      if (paramObject == null) {
        throw new NullPointerException("key");
      }
      int j = hash(paramObject);
      CustomConcurrentHashMap.Impl.Segment localSegment = segmentFor(j);
      Object localObject1 = localSegment.getEntry(paramObject, j);
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localSegment.lock();
      }
      for (;;)
      {
        try
        {
          localObject1 = localSegment.getEntry(paramObject, j);
          if (localObject1 != null) {
            break label306;
          }
          i = count;
          if (i > threshold) {
            localSegment.expand();
          }
          localObject2 = table;
          int k = j & ((AtomicReferenceArray)localObject2).length() - 1;
          localObject1 = ((AtomicReferenceArray)localObject2).get(k);
          modCount += 1;
          localObject1 = computingStrategy.newEntry(paramObject, j, localObject1);
          ((AtomicReferenceArray)localObject2).set(k, localObject1);
          count = (i + 1);
          i = 1;
          localSegment.unlock();
          localObject2 = localObject1;
          if (i != 0) {
            try
            {
              localObject2 = computingStrategy.compute(paramObject, localObject1, computer);
              paramObject = localObject2;
              if (localObject2 != null) {
                break label284;
              }
              throw new NullPointerException("compute() returned null unexpectedly");
            }
            finally
            {
              localSegment.removeEntry(localObject1, j);
            }
          } else {
            i = 0;
          }
        }
        finally
        {
          localSegment.unlock();
        }
        try
        {
          localObject1 = computingStrategy.waitForValue(localObject2);
          if (localObject1 == null)
          {
            localSegment.removeEntry(localObject2, j);
            if (i == 0) {
              break;
            }
            Thread.currentThread().interrupt();
            break;
          }
          paramObject = localObject1;
          if (i != 0)
          {
            Thread.currentThread().interrupt();
            paramObject = localObject1;
          }
          label284:
          return (V)paramObject;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            i = 1;
          }
        }
        finally
        {
          if (i != 0) {
            Thread.currentThread().interrupt();
          }
        }
        label306:
        int i = 0;
      }
    }
  }
  
  static class Impl<K, V, E>
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
    final CustomConcurrentHashMap.c<K, V, E> strategy;
    Collection<V> values;
    
    Impl(CustomConcurrentHashMap.c<K, V, E> paramc, CustomConcurrentHashMap.Builder paramBuilder)
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
              segments[j] = new Segment(i);
              j += 1;
            }
            strategy = paramc;
            paramc.setInternals(new InternalsImpl());
            return;
          }
        }
        j = i;
      }
    }
    
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      int j = 65536;
      int m;
      int i;
      int k;
      try
      {
        m = paramObjectInputStream.readInt();
        i = paramObjectInputStream.readInt();
        localObject = (CustomConcurrentHashMap.c)paramObjectInputStream.readObject();
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
      Fields.segmentShift.set(this, Integer.valueOf(32 - k));
      Fields.segmentMask.set(this, Integer.valueOf(i - 1));
      Fields.segments.set(this, newSegmentArray(i));
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
          segments[j] = new Segment(i);
          j += 1;
        }
        else
        {
          Fields.strategy.set(this, localObject);
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
      throws IOException
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
      Segment[] arrayOfSegment = segments;
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
      Segment[] arrayOfSegment = segments;
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
      localObject = new EntrySet();
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
      Segment[] arrayOfSegment = segments;
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
      localObject = new KeySet();
      keySet = ((Set)localObject);
      return (Set<K>)localObject;
    }
    
    Impl<K, V, E>[].Segment newSegmentArray(int paramInt)
    {
      return (Segment[])Array.newInstance(Segment.class, paramInt);
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
      Segment[] arrayOfSegment = segments;
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
      localObject = new Values();
      values = ((Collection)localObject);
      return (Collection<V>)localObject;
    }
    
    final class EntryIterator
      extends CustomConcurrentHashMap.Impl<K, V, E>.HashIterator
      implements Iterator<Map.Entry<K, V>>
    {
      EntryIterator()
      {
        super();
      }
      
      public Map.Entry<K, V> next()
      {
        return nextEntry();
      }
    }
    
    final class EntrySet
      extends AbstractSet<Map.Entry<K, V>>
    {
      EntrySet() {}
      
      public void clear()
      {
        CustomConcurrentHashMap.Impl.this.clear();
      }
      
      public boolean contains(Object paramObject)
      {
        if (!(paramObject instanceof Map.Entry)) {}
        Object localObject;
        do
        {
          do
          {
            return false;
            paramObject = (Map.Entry)paramObject;
            localObject = ((Map.Entry)paramObject).getKey();
          } while (localObject == null);
          localObject = get(localObject);
        } while ((localObject == null) || (!strategy.equalValues(localObject, ((Map.Entry)paramObject).getValue())));
        return true;
      }
      
      public boolean isEmpty()
      {
        return CustomConcurrentHashMap.Impl.this.isEmpty();
      }
      
      public Iterator<Map.Entry<K, V>> iterator()
      {
        return new CustomConcurrentHashMap.Impl.EntryIterator(CustomConcurrentHashMap.Impl.this);
      }
      
      public boolean remove(Object paramObject)
      {
        if (!(paramObject instanceof Map.Entry)) {}
        Object localObject;
        do
        {
          return false;
          paramObject = (Map.Entry)paramObject;
          localObject = ((Map.Entry)paramObject).getKey();
        } while ((localObject == null) || (!remove(localObject, ((Map.Entry)paramObject).getValue())));
        return true;
      }
      
      public int size()
      {
        return CustomConcurrentHashMap.Impl.this.size();
      }
    }
    
    static class Fields
    {
      static final Field segmentMask = findField("segmentMask");
      static final Field segmentShift = findField("segmentShift");
      static final Field segments = findField("segments");
      static final Field strategy = findField("strategy");
      
      static Field findField(String paramString)
      {
        try
        {
          paramString = CustomConcurrentHashMap.Impl.class.getDeclaredField(paramString);
          paramString.setAccessible(true);
          return paramString;
        }
        catch (NoSuchFieldException paramString)
        {
          throw new AssertionError(paramString);
        }
      }
    }
    
    abstract class HashIterator
    {
      AtomicReferenceArray<E> currentTable;
      CustomConcurrentHashMap.Impl<K, V, E>.WriteThroughEntry lastReturned;
      E nextEntry;
      CustomConcurrentHashMap.Impl<K, V, E>.WriteThroughEntry nextExternal;
      int nextSegmentIndex = segments.length - 1;
      int nextTableIndex = -1;
      
      HashIterator()
      {
        advance();
      }
      
      final void advance()
      {
        nextExternal = null;
        if (nextInChain()) {}
        do
        {
          Object localObject;
          do
          {
            do
            {
              ;;
              while (nextInTable()) {}
            } while (nextSegmentIndex < 0);
            localObject = segments;
            int i = nextSegmentIndex;
            nextSegmentIndex = (i - 1);
            localObject = localObject[i];
          } while (count == 0);
          currentTable = table;
          nextTableIndex = (currentTable.length() - 1);
        } while (!nextInTable());
      }
      
      boolean advanceTo(E paramE)
      {
        CustomConcurrentHashMap.c localc = strategy;
        Object localObject = localc.getKey(paramE);
        paramE = localc.getValue(paramE);
        if ((localObject != null) && (paramE != null))
        {
          nextExternal = new CustomConcurrentHashMap.Impl.WriteThroughEntry(CustomConcurrentHashMap.Impl.this, localObject, paramE);
          return true;
        }
        return false;
      }
      
      public boolean hasMoreElements()
      {
        return hasNext();
      }
      
      public boolean hasNext()
      {
        return nextExternal != null;
      }
      
      CustomConcurrentHashMap.Impl<K, V, E>.WriteThroughEntry nextEntry()
      {
        if (nextExternal == null) {
          throw new NoSuchElementException();
        }
        lastReturned = nextExternal;
        advance();
        return lastReturned;
      }
      
      boolean nextInChain()
      {
        CustomConcurrentHashMap.c localc = strategy;
        if (nextEntry != null) {
          for (nextEntry = localc.getNext(nextEntry); nextEntry != null; nextEntry = localc.getNext(nextEntry)) {
            if (advanceTo(nextEntry)) {
              return true;
            }
          }
        }
        return false;
      }
      
      boolean nextInTable()
      {
        while (nextTableIndex >= 0)
        {
          Object localObject = currentTable;
          int i = nextTableIndex;
          nextTableIndex = (i - 1);
          localObject = ((AtomicReferenceArray)localObject).get(i);
          nextEntry = localObject;
          if ((localObject != null) && ((advanceTo(nextEntry)) || (nextInChain()))) {
            return true;
          }
        }
        return false;
      }
      
      public void remove()
      {
        if (lastReturned == null) {
          throw new IllegalStateException();
        }
        remove(lastReturned.getKey());
        lastReturned = null;
      }
    }
    
    class InternalsImpl
      implements CustomConcurrentHashMap.b<K, V, E>, Serializable
    {
      static final long serialVersionUID = 0L;
      
      InternalsImpl() {}
      
      public E getEntry(K paramK)
      {
        if (paramK == null) {
          throw new NullPointerException("key");
        }
        int i = hash(paramK);
        return (E)segmentFor(i).getEntry(paramK, i);
      }
      
      public boolean removeEntry(E paramE)
      {
        if (paramE == null) {
          throw new NullPointerException("entry");
        }
        int i = strategy.getHash(paramE);
        return segmentFor(i).removeEntry(paramE, i);
      }
      
      public boolean removeEntry(E paramE, V paramV)
      {
        if (paramE == null) {
          throw new NullPointerException("entry");
        }
        int i = strategy.getHash(paramE);
        return segmentFor(i).removeEntry(paramE, i, paramV);
      }
    }
    
    final class KeyIterator
      extends CustomConcurrentHashMap.Impl<K, V, E>.HashIterator
      implements Iterator<K>
    {
      KeyIterator()
      {
        super();
      }
      
      public K next()
      {
        return (K)super.nextEntry().getKey();
      }
    }
    
    final class KeySet
      extends AbstractSet<K>
    {
      KeySet() {}
      
      public void clear()
      {
        CustomConcurrentHashMap.Impl.this.clear();
      }
      
      public boolean contains(Object paramObject)
      {
        return containsKey(paramObject);
      }
      
      public boolean isEmpty()
      {
        return CustomConcurrentHashMap.Impl.this.isEmpty();
      }
      
      public Iterator<K> iterator()
      {
        return new CustomConcurrentHashMap.Impl.KeyIterator(CustomConcurrentHashMap.Impl.this);
      }
      
      public boolean remove(Object paramObject)
      {
        return remove(paramObject) != null;
      }
      
      public int size()
      {
        return CustomConcurrentHashMap.Impl.this.size();
      }
    }
    
    final class Segment
      extends ReentrantLock
    {
      volatile int count;
      int modCount;
      volatile AtomicReferenceArray<E> table;
      int threshold;
      
      Segment(int paramInt)
      {
        setTable(newEntryArray(paramInt));
      }
      
      void clear()
      {
        int i = 0;
        if (count != 0) {
          lock();
        }
        try
        {
          AtomicReferenceArray localAtomicReferenceArray = table;
          while (i < localAtomicReferenceArray.length())
          {
            localAtomicReferenceArray.set(i, null);
            i += 1;
          }
          modCount += 1;
          count = 0;
          return;
        }
        finally
        {
          unlock();
        }
      }
      
      boolean containsKey(Object paramObject, int paramInt)
      {
        boolean bool2 = false;
        CustomConcurrentHashMap.c localc = strategy;
        boolean bool1 = bool2;
        if (count != 0)
        {
          Object localObject1 = getFirst(paramInt);
          bool1 = bool2;
          if (localObject1 != null)
          {
            if (localc.getHash(localObject1) != paramInt) {}
            Object localObject2;
            do
            {
              localObject1 = localc.getNext(localObject1);
              break;
              localObject2 = localc.getKey(localObject1);
            } while ((localObject2 == null) || (!localc.equalKeys(localObject2, paramObject)));
            bool1 = bool2;
            if (localc.getValue(localObject1) != null) {
              bool1 = true;
            }
          }
        }
        return bool1;
      }
      
      boolean containsValue(Object paramObject)
      {
        boolean bool2 = false;
        CustomConcurrentHashMap.c localc = strategy;
        boolean bool1 = bool2;
        AtomicReferenceArray localAtomicReferenceArray;
        int j;
        int i;
        if (count != 0)
        {
          localAtomicReferenceArray = table;
          j = localAtomicReferenceArray.length();
          i = 0;
        }
        for (;;)
        {
          bool1 = bool2;
          if (i < j)
          {
            Object localObject1 = localAtomicReferenceArray.get(i);
            if (localObject1 != null)
            {
              Object localObject2 = localc.getValue(localObject1);
              if (localObject2 == null) {}
              while (!localc.equalValues(localObject2, paramObject))
              {
                localObject1 = localc.getNext(localObject1);
                break;
              }
              bool1 = true;
            }
          }
          else
          {
            return bool1;
          }
          i += 1;
        }
      }
      
      void expand()
      {
        AtomicReferenceArray localAtomicReferenceArray1 = table;
        int m = localAtomicReferenceArray1.length();
        if (m >= 1073741824) {
          return;
        }
        CustomConcurrentHashMap.c localc = strategy;
        AtomicReferenceArray localAtomicReferenceArray2 = newEntryArray(m << 1);
        threshold = (localAtomicReferenceArray2.length() * 3 / 4);
        int n = localAtomicReferenceArray2.length() - 1;
        int j = 0;
        Object localObject3;
        Object localObject2;
        int i;
        Object localObject1;
        for (;;)
        {
          if (j < m)
          {
            localObject3 = localAtomicReferenceArray1.get(j);
            if (localObject3 != null)
            {
              localObject2 = localc.getNext(localObject3);
              i = localc.getHash(localObject3) & n;
              if (localObject2 == null) {
                localAtomicReferenceArray2.set(i, localObject3);
              }
            }
            else
            {
              j += 1;
              continue;
            }
            localObject1 = localObject3;
            label131:
            if (localObject2 != null)
            {
              int k = localc.getHash(localObject2) & n;
              if (k == i) {
                break label266;
              }
              localObject1 = localObject2;
              i = k;
            }
          }
        }
        label266:
        for (;;)
        {
          localObject2 = localc.getNext(localObject2);
          break label131;
          localAtomicReferenceArray2.set(i, localObject1);
          for (localObject2 = localObject3; localObject2 != localObject1; localObject2 = localc.getNext(localObject2))
          {
            localObject3 = localc.getKey(localObject2);
            if (localObject3 != null)
            {
              i = localc.getHash(localObject2) & n;
              localAtomicReferenceArray2.set(i, localc.copyEntry(localObject3, localObject2, localAtomicReferenceArray2.get(i)));
            }
          }
          break;
          table = localAtomicReferenceArray2;
          return;
        }
      }
      
      V get(Object paramObject, int paramInt)
      {
        paramObject = getEntry(paramObject, paramInt);
        if (paramObject == null) {
          return null;
        }
        return (V)strategy.getValue(paramObject);
      }
      
      public E getEntry(Object paramObject, int paramInt)
      {
        CustomConcurrentHashMap.c localc = strategy;
        if (count != 0)
        {
          Object localObject1 = getFirst(paramInt);
          if (localObject1 != null)
          {
            if (localc.getHash(localObject1) != paramInt) {}
            Object localObject2;
            do
            {
              localObject1 = localc.getNext(localObject1);
              break;
              localObject2 = localc.getKey(localObject1);
            } while ((localObject2 == null) || (!localc.equalKeys(localObject2, paramObject)));
            return (E)localObject1;
          }
        }
        return null;
      }
      
      E getFirst(int paramInt)
      {
        AtomicReferenceArray localAtomicReferenceArray = table;
        return (E)localAtomicReferenceArray.get(localAtomicReferenceArray.length() - 1 & paramInt);
      }
      
      AtomicReferenceArray<E> newEntryArray(int paramInt)
      {
        return new AtomicReferenceArray(paramInt);
      }
      
      V put(K paramK, int paramInt, V paramV, boolean paramBoolean)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          int i = count;
          if (i > threshold) {
            expand();
          }
          AtomicReferenceArray localAtomicReferenceArray = table;
          int j = paramInt & localAtomicReferenceArray.length() - 1;
          Object localObject2 = localAtomicReferenceArray.get(j);
          for (Object localObject1 = localObject2; localObject1 != null; localObject1 = localc.getNext(localObject1))
          {
            Object localObject3 = localc.getKey(localObject1);
            if ((localc.getHash(localObject1) == paramInt) && (localObject3 != null) && (localc.equalKeys(paramK, localObject3)))
            {
              paramK = localc.getValue(localObject1);
              if ((paramBoolean) && (paramK != null)) {
                return paramK;
              }
              localc.setValue(localObject1, paramV);
              return paramK;
            }
          }
          modCount += 1;
          paramK = localc.newEntry(paramK, paramInt, localObject2);
          localc.setValue(paramK, paramV);
          localAtomicReferenceArray.set(j, paramK);
          count = (i + 1);
          return null;
        }
        finally
        {
          unlock();
        }
      }
      
      V remove(Object paramObject, int paramInt)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          int i = count;
          AtomicReferenceArray localAtomicReferenceArray = table;
          int j = paramInt & localAtomicReferenceArray.length() - 1;
          Object localObject2 = localAtomicReferenceArray.get(j);
          for (Object localObject1 = localObject2; localObject1 != null; localObject1 = localc.getNext(localObject1))
          {
            Object localObject3 = localc.getKey(localObject1);
            if ((localc.getHash(localObject1) == paramInt) && (localObject3 != null) && (localc.equalKeys(localObject3, paramObject)))
            {
              Object localObject4 = strategy.getValue(localObject1);
              modCount += 1;
              localObject3 = localc.getNext(localObject1);
              paramObject = localObject2;
              for (localObject2 = localObject3; paramObject != localObject1; localObject2 = localObject3)
              {
                Object localObject5 = localc.getKey(paramObject);
                localObject3 = localObject2;
                if (localObject5 != null) {
                  localObject3 = localc.copyEntry(localObject5, paramObject, localObject2);
                }
                paramObject = localc.getNext(paramObject);
              }
              localAtomicReferenceArray.set(j, localObject2);
              count = (i - 1);
              return (V)localObject4;
            }
          }
          return null;
        }
        finally
        {
          unlock();
        }
      }
      
      boolean remove(Object paramObject1, int paramInt, Object paramObject2)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          int i = count;
          AtomicReferenceArray localAtomicReferenceArray = table;
          int j = paramInt & localAtomicReferenceArray.length() - 1;
          Object localObject2 = localAtomicReferenceArray.get(j);
          for (Object localObject1 = localObject2; localObject1 != null; localObject1 = localc.getNext(localObject1))
          {
            Object localObject3 = localc.getKey(localObject1);
            if ((localc.getHash(localObject1) == paramInt) && (localObject3 != null) && (localc.equalKeys(localObject3, paramObject1)))
            {
              paramObject1 = strategy.getValue(localObject1);
              if ((paramObject2 == paramObject1) || ((paramObject2 != null) && (paramObject1 != null) && (localc.equalValues(paramObject1, paramObject2))))
              {
                modCount += 1;
                for (paramObject1 = localc.getNext(localObject1); localObject2 != localObject1; paramObject1 = paramObject2)
                {
                  localObject3 = localc.getKey(localObject2);
                  paramObject2 = paramObject1;
                  if (localObject3 != null) {
                    paramObject2 = localc.copyEntry(localObject3, localObject2, paramObject1);
                  }
                  localObject2 = localc.getNext(localObject2);
                }
                localAtomicReferenceArray.set(j, paramObject1);
                count = (i - 1);
                return true;
              }
              return false;
            }
          }
          return false;
        }
        finally
        {
          unlock();
        }
      }
      
      public boolean removeEntry(E paramE, int paramInt)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          int i = count;
          AtomicReferenceArray localAtomicReferenceArray = table;
          int j = paramInt & localAtomicReferenceArray.length() - 1;
          Object localObject2 = localAtomicReferenceArray.get(j);
          for (Object localObject1 = localObject2; localObject1 != null; localObject1 = localc.getNext(localObject1)) {
            if ((localc.getHash(localObject1) == paramInt) && (paramE.equals(localObject1)))
            {
              modCount += 1;
              Object localObject3 = localc.getNext(localObject1);
              paramE = (E)localObject2;
              for (localObject2 = localObject3; paramE != localObject1; localObject2 = localObject3)
              {
                Object localObject4 = localc.getKey(paramE);
                localObject3 = localObject2;
                if (localObject4 != null) {
                  localObject3 = localc.copyEntry(localObject4, paramE, localObject2);
                }
                paramE = localc.getNext(paramE);
              }
              localAtomicReferenceArray.set(j, localObject2);
              count = (i - 1);
              return true;
            }
          }
          return false;
        }
        finally
        {
          unlock();
        }
      }
      
      public boolean removeEntry(E paramE, int paramInt, V paramV)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          int i = count;
          AtomicReferenceArray localAtomicReferenceArray = table;
          int j = paramInt & localAtomicReferenceArray.length() - 1;
          Object localObject2 = localAtomicReferenceArray.get(j);
          for (Object localObject1 = localObject2; localObject1 != null; localObject1 = localc.getNext(localObject1)) {
            if ((localc.getHash(localObject1) == paramInt) && (paramE.equals(localObject1)))
            {
              paramE = localc.getValue(localObject1);
              if ((paramE == paramV) || ((paramV != null) && (localc.equalValues(paramE, paramV))))
              {
                modCount += 1;
                for (paramE = localc.getNext(localObject1); localObject2 != localObject1; paramE = paramV)
                {
                  Object localObject3 = localc.getKey(localObject2);
                  paramV = paramE;
                  if (localObject3 != null) {
                    paramV = localc.copyEntry(localObject3, localObject2, paramE);
                  }
                  localObject2 = localc.getNext(localObject2);
                }
                localAtomicReferenceArray.set(j, paramE);
                count = (i - 1);
                return true;
              }
              return false;
            }
          }
          return false;
        }
        finally
        {
          unlock();
        }
      }
      
      V replace(K paramK, int paramInt, V paramV)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          for (Object localObject1 = getFirst(paramInt); localObject1 != null; localObject1 = localc.getNext(localObject1))
          {
            Object localObject2 = localc.getKey(localObject1);
            if ((localc.getHash(localObject1) == paramInt) && (localObject2 != null) && (localc.equalKeys(paramK, localObject2)))
            {
              paramK = localc.getValue(localObject1);
              if (paramK == null) {
                return null;
              }
              localc.setValue(localObject1, paramV);
              return paramK;
            }
          }
          return null;
        }
        finally
        {
          unlock();
        }
      }
      
      boolean replace(K paramK, int paramInt, V paramV1, V paramV2)
      {
        CustomConcurrentHashMap.c localc = strategy;
        lock();
        try
        {
          for (Object localObject1 = getFirst(paramInt); localObject1 != null; localObject1 = localc.getNext(localObject1))
          {
            Object localObject2 = localc.getKey(localObject1);
            if ((localc.getHash(localObject1) == paramInt) && (localObject2 != null) && (localc.equalKeys(paramK, localObject2)))
            {
              localObject2 = localc.getValue(localObject1);
              if (localObject2 == null) {
                return false;
              }
              if (localc.equalValues(localObject2, paramV1))
              {
                localc.setValue(localObject1, paramV2);
                return true;
              }
            }
          }
          return false;
        }
        finally
        {
          unlock();
        }
      }
      
      void setTable(AtomicReferenceArray<E> paramAtomicReferenceArray)
      {
        threshold = (paramAtomicReferenceArray.length() * 3 / 4);
        table = paramAtomicReferenceArray;
      }
    }
    
    final class ValueIterator
      extends CustomConcurrentHashMap.Impl<K, V, E>.HashIterator
      implements Iterator<V>
    {
      ValueIterator()
      {
        super();
      }
      
      public V next()
      {
        return (V)super.nextEntry().getValue();
      }
    }
    
    final class Values
      extends AbstractCollection<V>
    {
      Values() {}
      
      public void clear()
      {
        CustomConcurrentHashMap.Impl.this.clear();
      }
      
      public boolean contains(Object paramObject)
      {
        return containsValue(paramObject);
      }
      
      public boolean isEmpty()
      {
        return CustomConcurrentHashMap.Impl.this.isEmpty();
      }
      
      public Iterator<V> iterator()
      {
        return new CustomConcurrentHashMap.Impl.ValueIterator(CustomConcurrentHashMap.Impl.this);
      }
      
      public int size()
      {
        return CustomConcurrentHashMap.Impl.this.size();
      }
    }
    
    final class WriteThroughEntry
      extends a<K, V>
    {
      final K key;
      V value;
      
      WriteThroughEntry(V paramV)
      {
        key = paramV;
        Object localObject;
        value = localObject;
      }
      
      public K getKey()
      {
        return (K)key;
      }
      
      public V getValue()
      {
        return (V)value;
      }
      
      public V setValue(V paramV)
      {
        if (paramV == null) {
          throw new NullPointerException();
        }
        Object localObject = put(getKey(), paramV);
        value = paramV;
        return (V)localObject;
      }
    }
  }
  
  static class SimpleInternalEntry<K, V>
  {
    final int hash;
    final K key;
    final SimpleInternalEntry<K, V> next;
    volatile V value;
    
    SimpleInternalEntry(K paramK, int paramInt, V paramV, SimpleInternalEntry<K, V> paramSimpleInternalEntry)
    {
      key = paramK;
      hash = paramInt;
      value = paramV;
      next = paramSimpleInternalEntry;
    }
  }
  
  public static abstract interface a<K, V, E>
    extends CustomConcurrentHashMap.c<K, V, E>
  {
    public abstract V compute(K paramK, E paramE, d<? super K, ? extends V> paramd);
    
    public abstract V waitForValue(E paramE)
      throws InterruptedException;
  }
  
  public static abstract interface b<K, V, E>
  {
    public abstract boolean removeEntry(E paramE);
    
    public abstract boolean removeEntry(E paramE, V paramV);
  }
  
  public static abstract interface c<K, V, E>
  {
    public abstract E copyEntry(K paramK, E paramE1, E paramE2);
    
    public abstract boolean equalKeys(K paramK, Object paramObject);
    
    public abstract boolean equalValues(V paramV, Object paramObject);
    
    public abstract int getHash(E paramE);
    
    public abstract K getKey(E paramE);
    
    public abstract E getNext(E paramE);
    
    public abstract V getValue(E paramE);
    
    public abstract int hashKey(Object paramObject);
    
    public abstract E newEntry(K paramK, int paramInt, E paramE);
    
    public abstract void setInternals(CustomConcurrentHashMap.b<K, V, E> paramb);
    
    public abstract void setValue(E paramE, V paramV);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */