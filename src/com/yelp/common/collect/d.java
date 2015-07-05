package com.yelp.common.collect;

public abstract interface d<K, V, E>
{
  public abstract E copyEntry(K paramK, E paramE1, E paramE2);
  
  public abstract boolean equalKeys(K paramK, Object paramObject);
  
  public abstract boolean equalValues(V paramV, Object paramObject);
  
  public abstract int getHash(E paramE);
  
  public abstract K getKey(E paramE);
  
  public abstract E getNext(E paramE);
  
  public abstract V getValue(E paramE);
  
  public abstract int hashKey(Object paramObject);
  
  public abstract E newEntry(K paramK, int paramInt, E paramE);
  
  public abstract void setInternals(c<K, V, E> paramc);
  
  public abstract void setValue(E paramE, V paramV);
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */