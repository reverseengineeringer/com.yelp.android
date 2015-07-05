package com.yelp.common.collect;

import com.yelp.common.base.g;
import java.util.concurrent.atomic.AtomicReferenceArray;

class CustomConcurrentHashMap$ComputingImpl<K, V, E>
  extends CustomConcurrentHashMap.Impl<K, V, E>
{
  static final long serialVersionUID = 0L;
  final g<? super K, ? extends V> computer;
  final b<K, V, E> computingStrategy;
  
  CustomConcurrentHashMap$ComputingImpl(b<K, V, E> paramb, CustomConcurrentHashMap.Builder paramBuilder, g<? super K, ? extends V> paramg)
  {
    super(paramb, paramBuilder);
    computingStrategy = paramb;
    computer = paramg;
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

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.ComputingImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */