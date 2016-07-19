package com.yelp.common.collect;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;

abstract class CustomConcurrentHashMap$Impl$HashIterator
{
  AtomicReferenceArray<E> currentTable;
  CustomConcurrentHashMap.Impl<K, V, E>.WriteThroughEntry lastReturned;
  E nextEntry;
  CustomConcurrentHashMap.Impl<K, V, E>.WriteThroughEntry nextExternal;
  int nextSegmentIndex;
  int nextTableIndex;
  
  CustomConcurrentHashMap$Impl$HashIterator(CustomConcurrentHashMap.Impl paramImpl)
  {
    nextSegmentIndex = (segments.length - 1);
    nextTableIndex = -1;
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
        localObject = this$0.segments;
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
    CustomConcurrentHashMap.c localc = this$0.strategy;
    Object localObject = localc.getKey(paramE);
    paramE = localc.getValue(paramE);
    if ((localObject != null) && (paramE != null))
    {
      nextExternal = new CustomConcurrentHashMap.Impl.WriteThroughEntry(this$0, localObject, paramE);
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
    CustomConcurrentHashMap.c localc = this$0.strategy;
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
    this$0.remove(lastReturned.getKey());
    lastReturned = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.HashIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */