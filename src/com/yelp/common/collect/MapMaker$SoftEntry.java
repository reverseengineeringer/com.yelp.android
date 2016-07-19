package com.yelp.common.collect;

import com.yelp.common.base.b;

class MapMaker$SoftEntry<K, V>
  extends b<K>
  implements MapMaker.a<K, V>
{
  final int hash;
  final CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> internals;
  volatile MapMaker.b<K, V> valueReference = MapMaker.access$600();
  
  MapMaker$SoftEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt)
  {
    super(paramK, MapMaker.QueueHolder.queue);
    internals = paramb;
    hash = paramInt;
  }
  
  public void finalizeReferent()
  {
    internals.removeEntry(this);
  }
  
  public int getHash()
  {
    return hash;
  }
  
  public K getKey()
  {
    return (K)get();
  }
  
  public MapMaker.a<K, V> getNext()
  {
    return null;
  }
  
  public MapMaker.b<K, V> getValueReference()
  {
    return valueReference;
  }
  
  public void setValueReference(MapMaker.b<K, V> paramb)
  {
    valueReference = paramb;
  }
  
  public void valueReclaimed()
  {
    internals.removeEntry(this, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.SoftEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */