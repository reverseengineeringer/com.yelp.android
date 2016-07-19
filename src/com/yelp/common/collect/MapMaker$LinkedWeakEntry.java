package com.yelp.common.collect;

class MapMaker$LinkedWeakEntry<K, V>
  extends MapMaker.WeakEntry<K, V>
{
  final MapMaker.a<K, V> next;
  
  MapMaker$LinkedWeakEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt, MapMaker.a<K, V> parama)
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
 * Qualified Name:     com.yelp.common.collect.MapMaker.LinkedWeakEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */