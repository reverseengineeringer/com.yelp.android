package com.yelp.common.collect;

abstract interface MapMaker$a<K, V>
{
  public abstract int getHash();
  
  public abstract K getKey();
  
  public abstract a<K, V> getNext();
  
  public abstract MapMaker.b<K, V> getValueReference();
  
  public abstract void setValueReference(MapMaker.b<K, V> paramb);
  
  public abstract void valueReclaimed();
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */