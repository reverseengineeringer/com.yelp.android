package com.yelp.common.collect;

class MapMaker$StrongEntry<K, V>
  implements f<K, V>
{
  final int hash;
  final c<K, V, f<K, V>> internals;
  final K key;
  volatile g<K, V> valueReference = MapMaker.access$600();
  
  MapMaker$StrongEntry(c<K, V, f<K, V>> paramc, K paramK, int paramInt)
  {
    internals = paramc;
    key = paramK;
    hash = paramInt;
  }
  
  public int getHash()
  {
    return hash;
  }
  
  public K getKey()
  {
    return (K)key;
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
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrongEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */