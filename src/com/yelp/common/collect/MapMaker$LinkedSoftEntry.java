package com.yelp.common.collect;

class MapMaker$LinkedSoftEntry<K, V>
  extends MapMaker.SoftEntry<K, V>
{
  final f<K, V> next;
  
  MapMaker$LinkedSoftEntry(c<K, V, f<K, V>> paramc, K paramK, int paramInt, f<K, V> paramf)
  {
    super(paramc, paramK, paramInt);
    next = paramf;
  }
  
  public f<K, V> getNext()
  {
    return next;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.LinkedSoftEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */