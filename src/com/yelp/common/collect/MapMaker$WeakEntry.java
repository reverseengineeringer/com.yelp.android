package com.yelp.common.collect;

class MapMaker$WeakEntry<K, V>
  extends com.yelp.common.base.f<K>
  implements f<K, V>
{
  final int hash;
  final c<K, V, f<K, V>> internals;
  volatile g<K, V> valueReference = MapMaker.access$600();
  
  MapMaker$WeakEntry(c<K, V, f<K, V>> paramc, K paramK, int paramInt)
  {
    super(paramK, MapMaker.QueueHolder.queue);
    internals = paramc;
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
  
  public f<K, V> getNext()
  {
    return null;
  }
  
  public g<K, V> getValueReference()
  {
    return valueReference;
  }
  
  public void setValueReference(g<K, V> paramg)
  {
    valueReference = paramg;
  }
  
  public void valueReclaimed()
  {
    internals.removeEntry(this, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.WeakEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */