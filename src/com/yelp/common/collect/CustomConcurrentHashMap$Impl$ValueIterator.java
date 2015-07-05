package com.yelp.common.collect;

import java.util.Iterator;

final class CustomConcurrentHashMap$Impl$ValueIterator
  extends CustomConcurrentHashMap.Impl<K, V, E>.HashIterator
  implements Iterator<V>
{
  CustomConcurrentHashMap$Impl$ValueIterator(CustomConcurrentHashMap.Impl paramImpl)
  {
    super(paramImpl);
  }
  
  public V next()
  {
    return (V)super.nextEntry().getValue();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.ValueIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */