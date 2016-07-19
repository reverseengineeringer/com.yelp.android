package com.yelp.common.collect;

abstract interface MapMaker$b<K, V>
{
  public abstract b<K, V> copyFor(MapMaker.a<K, V> parama);
  
  public abstract V get();
  
  public abstract V waitForValue()
    throws InterruptedException;
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */