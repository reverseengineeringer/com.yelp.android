package com.yelp.common.collect;

class MapMaker$LinkedStrongEntry<K, V>
  extends MapMaker.StrongEntry<K, V>
{
  final MapMaker.a<K, V> next;
  
  MapMaker$LinkedStrongEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt, MapMaker.a<K, V> parama)
  {
    super(paramb, paramK, paramInt);
    next = parama;
  }
  
  public MapMaker.a<K, V> getNext()
  {
    return next;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.LinkedStrongEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */