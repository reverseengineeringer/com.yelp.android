package com.yelp.common.collect;

abstract interface g<K, V>
{
  public abstract g<K, V> copyFor(f<K, V> paramf);
  
  public abstract V get();
  
  public abstract V waitForValue();
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */