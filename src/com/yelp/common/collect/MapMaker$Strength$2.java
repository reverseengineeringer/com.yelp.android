package com.yelp.common.collect;

 enum MapMaker$Strength$2
{
  MapMaker$Strength$2()
  {
    super(paramString, paramInt, null);
  }
  
  <K, V> f<K, V> copyEntry(K paramK, f<K, V> paramf1, f<K, V> paramf2)
  {
    paramf1 = (MapMaker.SoftEntry)paramf1;
    if (paramf2 == null) {
      return new MapMaker.SoftEntry(internals, paramK, hash);
    }
    return new MapMaker.LinkedSoftEntry(internals, paramK, hash, paramf2);
  }
  
  boolean equal(Object paramObject1, Object paramObject2)
  {
    return paramObject1 == paramObject2;
  }
  
  int hash(Object paramObject)
  {
    return System.identityHashCode(paramObject);
  }
  
  <K, V> f<K, V> newEntry(c<K, V, f<K, V>> paramc, K paramK, int paramInt, f<K, V> paramf)
  {
    if (paramf == null) {
      return new MapMaker.SoftEntry(paramc, paramK, paramInt);
    }
    return new MapMaker.LinkedSoftEntry(paramc, paramK, paramInt, paramf);
  }
  
  <K, V> g<K, V> referenceValue(f<K, V> paramf, V paramV)
  {
    return new MapMaker.SoftValueReference(paramV, paramf);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.Strength.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */