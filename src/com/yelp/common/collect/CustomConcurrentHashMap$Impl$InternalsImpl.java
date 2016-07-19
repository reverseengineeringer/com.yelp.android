package com.yelp.common.collect;

import java.io.Serializable;

class CustomConcurrentHashMap$Impl$InternalsImpl
  implements CustomConcurrentHashMap.b<K, V, E>, Serializable
{
  static final long serialVersionUID = 0L;
  
  CustomConcurrentHashMap$Impl$InternalsImpl(CustomConcurrentHashMap.Impl paramImpl) {}
  
  public E getEntry(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key");
    }
    int i = this$0.hash(paramK);
    return (E)this$0.segmentFor(i).getEntry(paramK, i);
  }
  
  public boolean removeEntry(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("entry");
    }
    int i = this$0.strategy.getHash(paramE);
    return this$0.segmentFor(i).removeEntry(paramE, i);
  }
  
  public boolean removeEntry(E paramE, V paramV)
  {
    if (paramE == null) {
      throw new NullPointerException("entry");
    }
    int i = this$0.strategy.getHash(paramE);
    return this$0.segmentFor(i).removeEntry(paramE, i, paramV);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.InternalsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */