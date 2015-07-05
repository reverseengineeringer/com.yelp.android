package com.yelp.common.collect;

 enum MapMaker$Strength$3
{
  MapMaker$Strength$3()
  {
    super(paramString, paramInt, null);
  }
  
  <K, V> f<K, V> copyEntry(K paramK, f<K, V> paramf1, f<K, V> paramf2)
  {
    paramf1 = (MapMaker.StrongEntry)paramf1;
    if (paramf2 == null) {
      return new MapMaker.StrongEntry(internals, paramK, hash);
    }
    return new MapMaker.LinkedStrongEntry(internals, paramK, hash, paramf2);
  }
  
  boolean equal(Object paramObject1, Object paramObject2)
  {
    return paramObject1.equals(paramObject2);
  }
  
  int hash(Object paramObject)
  {
    return paramObject.hashCode();
  }
  
  <K, V> f<K, V> newEntry(c<K, V, f<K, V>> paramc, K paramK, int paramInt, f<K, V> paramf)
  {
    if (paramf == null) {
      return new MapMaker.StrongEntry(paramc, paramK, paramInt);
    }
    return new MapMaker.LinkedStrongEntry(paramc, paramK, paramInt, paramf);
  }
  
  <K, V> g<K, V> referenceValue(f<K, V> paramf, V paramV)
  {
    return new MapMaker.StrongValueReference(paramV);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.Strength.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */