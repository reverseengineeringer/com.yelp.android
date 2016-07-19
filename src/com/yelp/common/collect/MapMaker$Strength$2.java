package com.yelp.common.collect;

 enum MapMaker$Strength$2
{
  MapMaker$Strength$2()
  {
    super(paramString, paramInt, null);
  }
  
  <K, V> MapMaker.a<K, V> copyEntry(K paramK, MapMaker.a<K, V> parama1, MapMaker.a<K, V> parama2)
  {
    parama1 = (MapMaker.SoftEntry)parama1;
    if (parama2 == null) {
      return new MapMaker.SoftEntry(internals, paramK, hash);
    }
    return new MapMaker.LinkedSoftEntry(internals, paramK, hash, parama2);
  }
  
  boolean equal(Object paramObject1, Object paramObject2)
  {
    return paramObject1 == paramObject2;
  }
  
  int hash(Object paramObject)
  {
    return System.identityHashCode(paramObject);
  }
  
  <K, V> MapMaker.a<K, V> newEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt, MapMaker.a<K, V> parama)
  {
    if (parama == null) {
      return new MapMaker.SoftEntry(paramb, paramK, paramInt);
    }
    return new MapMaker.LinkedSoftEntry(paramb, paramK, paramInt, parama);
  }
  
  <K, V> MapMaker.b<K, V> referenceValue(MapMaker.a<K, V> parama, V paramV)
  {
    return new MapMaker.SoftValueReference(paramV, parama);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.Strength.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */