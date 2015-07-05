package com.yelp.common.collect;

abstract interface f<K, V>
{
  public abstract int getHash();
  
  public abstract K getKey();
  
  public abstract f<K, V> getNext();
  
  public abstract g<K, V> getValueReference();
  
  public abstract void setValueReference(g<K, V> paramg);
  
  public abstract void valueReclaimed();
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */