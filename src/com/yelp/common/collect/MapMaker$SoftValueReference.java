package com.yelp.common.collect;

import com.yelp.common.base.e;

class MapMaker$SoftValueReference<K, V>
  extends e<V>
  implements g<K, V>
{
  final f<K, V> entry;
  
  MapMaker$SoftValueReference(V paramV, f<K, V> paramf)
  {
    super(paramV, MapMaker.QueueHolder.queue);
    entry = paramf;
  }
  
  public g<K, V> copyFor(f<K, V> paramf)
  {
    return new SoftValueReference(get(), paramf);
  }
  
  public void finalizeReferent()
  {
    entry.valueReclaimed();
  }
  
  public V waitForValue()
  {
    return (V)get();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.SoftValueReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */