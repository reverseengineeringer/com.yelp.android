package com.yelp.common.collect;

import java.util.Iterator;

final class CustomConcurrentHashMap$Impl$KeyIterator
  extends CustomConcurrentHashMap.Impl<K, V, E>.HashIterator
  implements Iterator<K>
{
  CustomConcurrentHashMap$Impl$KeyIterator(CustomConcurrentHashMap.Impl paramImpl)
  {
    super(paramImpl);
  }
  
  public K next()
  {
    return (K)super.nextEntry().getKey();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.KeyIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */