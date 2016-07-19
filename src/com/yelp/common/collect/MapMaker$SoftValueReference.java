package com.yelp.common.collect;

import com.yelp.common.base.b;

class MapMaker$SoftValueReference<K, V>
  extends b<V>
  implements MapMaker.b<K, V>
{
  final MapMaker.a<K, V> entry;
  
  MapMaker$SoftValueReference(V paramV, MapMaker.a<K, V> parama)
  {
    super(paramV, MapMaker.QueueHolder.queue);
    entry = parama;
  }
  
  public MapMaker.b<K, V> copyFor(MapMaker.a<K, V> parama)
  {
    return new SoftValueReference(get(), parama);
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