package com.yelp.common.collect;

 enum MapMaker$Strength$3
{
  MapMaker$Strength$3()
  {
    super(paramString, paramInt, null);
  }
  
  <K, V> MapMaker.a<K, V> copyEntry(K paramK, MapMaker.a<K, V> parama1, MapMaker.a<K, V> parama2)
  {
    parama1 = (MapMaker.StrongEntry)parama1;
    if (parama2 == null) {
      return new MapMaker.StrongEntry(internals, paramK, hash);
    }
    return new MapMaker.LinkedStrongEntry(internals, paramK, hash, parama2);
  }
  
  boolean equal(Object paramObject1, Object paramObject2)
  {
    return paramObject1.equals(paramObject2);
  }
  
  int hash(Object paramObject)
  {
    return paramObject.hashCode();
  }
  
  <K, V> MapMaker.a<K, V> newEntry(CustomConcurrentHashMap.b<K, V, MapMaker.a<K, V>> paramb, K paramK, int paramInt, MapMaker.a<K, V> parama)
  {
    if (parama == null) {
      return new MapMaker.StrongEntry(paramb, paramK, paramInt);
    }
    return new MapMaker.LinkedStrongEntry(paramb, paramK, paramInt, parama);
  }
  
  <K, V> MapMaker.b<K, V> referenceValue(MapMaker.a<K, V> parama, V paramV)
  {
    return new MapMaker.StrongValueReference(paramV);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.Strength.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */