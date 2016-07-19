package com.yelp.common.collect;

class MapMaker$StrongEntry<K, V>
  implements MapMaker.a<K, V>
{
  final int hash;
  final CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> internals;
  final K key;
  volatile MapMaker.b<K, V> valueReference = MapMaker.access$600();
  
  MapMaker$StrongEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt)
  {
    internals = paramb;
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
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrongEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */