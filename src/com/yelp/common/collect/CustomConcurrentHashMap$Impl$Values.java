package com.yelp.common.collect;

import java.util.AbstractCollection;
import java.util.Iterator;

final class CustomConcurrentHashMap$Impl$Values
  extends AbstractCollection<V>
{
  CustomConcurrentHashMap$Impl$Values(CustomConcurrentHashMap.Impl paramImpl) {}
  
  public void clear()
  {
    this$0.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this$0.containsValue(paramObject);
  }
  
  public boolean isEmpty()
  {
    return this$0.isEmpty();
  }
  
  public Iterator<V> iterator()
  {
    return new CustomConcurrentHashMap.Impl.ValueIterator(this$0);
  }
  
  public int size()
  {
    return this$0.size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.Values
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */