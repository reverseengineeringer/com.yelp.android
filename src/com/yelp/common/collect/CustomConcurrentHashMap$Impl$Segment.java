package com.yelp.common.collect;

import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

final class CustomConcurrentHashMap$Impl$Segment
  extends ReentrantLock
{
  volatile int count;
  int modCount;
  volatile AtomicReferenceArray<E> table;
  int threshold;
  
  CustomConcurrentHashMap$Impl$Segment(CustomConcurrentHashMap.Impl paramImpl, int paramInt)
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
    d locald = this$0.strategy;
    boolean bool1 = bool2;
    if (count != 0)
    {
      Object localObject1 = getFirst(paramInt);
      bool1 = bool2;
      if (localObject1 != null)
      {
        if (locald.getHash(localObject1) != paramInt) {}
        Object localObject2;
        do
        {
          localObject1 = locald.getNext(localObject1);
          break;
          localObject2 = locald.getKey(localObject1);
        } while ((localObject2 == null) || (!locald.equalKeys(localObject2, paramObject)));
        bool1 = bool2;
        if (locald.getValue(localObject1) != null) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  boolean containsValue(Object paramObject)
  {
    boolean bool2 = false;
    d locald = this$0.strategy;
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
          Object localObject2 = locald.getValue(localObject1);
          if (localObject2 == null) {}
          while (!locald.equalValues(localObject2, paramObject))
          {
            localObject1 = locald.getNext(localObject1);
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
    d locald = this$0.strategy;
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
          localObject2 = locald.getNext(localObject3);
          i = locald.getHash(localObject3) & n;
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
          int k = locald.getHash(localObject2) & n;
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
      localObject2 = locald.getNext(localObject2);
      break label131;
      localAtomicReferenceArray2.set(i, localObject1);
      for (localObject2 = localObject3; localObject2 != localObject1; localObject2 = locald.getNext(localObject2))
      {
        localObject3 = locald.getKey(localObject2);
        if (localObject3 != null)
        {
          i = locald.getHash(localObject2) & n;
          localAtomicReferenceArray2.set(i, locald.copyEntry(localObject3, localObject2, localAtomicReferenceArray2.get(i)));
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
    return (V)this$0.strategy.getValue(paramObject);
  }
  
  public E getEntry(Object paramObject, int paramInt)
  {
    d locald = this$0.strategy;
    if (count != 0)
    {
      Object localObject1 = getFirst(paramInt);
      if (localObject1 != null)
      {
        if (locald.getHash(localObject1) != paramInt) {}
        Object localObject2;
        do
        {
          localObject1 = locald.getNext(localObject1);
          break;
          localObject2 = locald.getKey(localObject1);
        } while ((localObject2 == null) || (!locald.equalKeys(localObject2, paramObject)));
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
    d locald = this$0.strategy;
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
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = locald.getNext(localObject1))
      {
        Object localObject3 = locald.getKey(localObject1);
        if ((locald.getHash(localObject1) == paramInt) && (localObject3 != null) && (locald.equalKeys(paramK, localObject3)))
        {
          paramK = locald.getValue(localObject1);
          if ((paramBoolean) && (paramK != null)) {
            return paramK;
          }
          locald.setValue(localObject1, paramV);
          return paramK;
        }
      }
      modCount += 1;
      paramK = locald.newEntry(paramK, paramInt, localObject2);
      locald.setValue(paramK, paramV);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      int i = count;
      AtomicReferenceArray localAtomicReferenceArray = table;
      int j = paramInt & localAtomicReferenceArray.length() - 1;
      Object localObject2 = localAtomicReferenceArray.get(j);
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = locald.getNext(localObject1))
      {
        Object localObject3 = locald.getKey(localObject1);
        if ((locald.getHash(localObject1) == paramInt) && (localObject3 != null) && (locald.equalKeys(localObject3, paramObject)))
        {
          Object localObject4 = this$0.strategy.getValue(localObject1);
          modCount += 1;
          localObject3 = locald.getNext(localObject1);
          paramObject = localObject2;
          for (localObject2 = localObject3; paramObject != localObject1; localObject2 = localObject3)
          {
            Object localObject5 = locald.getKey(paramObject);
            localObject3 = localObject2;
            if (localObject5 != null) {
              localObject3 = locald.copyEntry(localObject5, paramObject, localObject2);
            }
            paramObject = locald.getNext(paramObject);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      int i = count;
      AtomicReferenceArray localAtomicReferenceArray = table;
      int j = paramInt & localAtomicReferenceArray.length() - 1;
      Object localObject2 = localAtomicReferenceArray.get(j);
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = locald.getNext(localObject1))
      {
        Object localObject3 = locald.getKey(localObject1);
        if ((locald.getHash(localObject1) == paramInt) && (localObject3 != null) && (locald.equalKeys(localObject3, paramObject1)))
        {
          paramObject1 = this$0.strategy.getValue(localObject1);
          if ((paramObject2 == paramObject1) || ((paramObject2 != null) && (paramObject1 != null) && (locald.equalValues(paramObject1, paramObject2))))
          {
            modCount += 1;
            for (paramObject1 = locald.getNext(localObject1); localObject2 != localObject1; paramObject1 = paramObject2)
            {
              localObject3 = locald.getKey(localObject2);
              paramObject2 = paramObject1;
              if (localObject3 != null) {
                paramObject2 = locald.copyEntry(localObject3, localObject2, paramObject1);
              }
              localObject2 = locald.getNext(localObject2);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      int i = count;
      AtomicReferenceArray localAtomicReferenceArray = table;
      int j = paramInt & localAtomicReferenceArray.length() - 1;
      Object localObject2 = localAtomicReferenceArray.get(j);
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = locald.getNext(localObject1)) {
        if ((locald.getHash(localObject1) == paramInt) && (paramE.equals(localObject1)))
        {
          modCount += 1;
          Object localObject3 = locald.getNext(localObject1);
          paramE = (E)localObject2;
          for (localObject2 = localObject3; paramE != localObject1; localObject2 = localObject3)
          {
            Object localObject4 = locald.getKey(paramE);
            localObject3 = localObject2;
            if (localObject4 != null) {
              localObject3 = locald.copyEntry(localObject4, paramE, localObject2);
            }
            paramE = locald.getNext(paramE);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      int i = count;
      AtomicReferenceArray localAtomicReferenceArray = table;
      int j = paramInt & localAtomicReferenceArray.length() - 1;
      Object localObject2 = localAtomicReferenceArray.get(j);
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = locald.getNext(localObject1)) {
        if ((locald.getHash(localObject1) == paramInt) && (paramE.equals(localObject1)))
        {
          paramE = locald.getValue(localObject1);
          if ((paramE == paramV) || ((paramV != null) && (locald.equalValues(paramE, paramV))))
          {
            modCount += 1;
            for (paramE = locald.getNext(localObject1); localObject2 != localObject1; paramE = paramV)
            {
              Object localObject3 = locald.getKey(localObject2);
              paramV = paramE;
              if (localObject3 != null) {
                paramV = locald.copyEntry(localObject3, localObject2, paramE);
              }
              localObject2 = locald.getNext(localObject2);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      for (Object localObject1 = getFirst(paramInt); localObject1 != null; localObject1 = locald.getNext(localObject1))
      {
        Object localObject2 = locald.getKey(localObject1);
        if ((locald.getHash(localObject1) == paramInt) && (localObject2 != null) && (locald.equalKeys(paramK, localObject2)))
        {
          paramK = locald.getValue(localObject1);
          if (paramK == null) {
            return null;
          }
          locald.setValue(localObject1, paramV);
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
    d locald = this$0.strategy;
    lock();
    try
    {
      for (Object localObject1 = getFirst(paramInt); localObject1 != null; localObject1 = locald.getNext(localObject1))
      {
        Object localObject2 = locald.getKey(localObject1);
        if ((locald.getHash(localObject1) == paramInt) && (localObject2 != null) && (locald.equalKeys(paramK, localObject2)))
        {
          localObject2 = locald.getValue(localObject1);
          if (localObject2 == null) {
            return false;
          }
          if (locald.equalValues(localObject2, paramV1))
          {
            locald.setValue(localObject1, paramV2);
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

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.Segment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */