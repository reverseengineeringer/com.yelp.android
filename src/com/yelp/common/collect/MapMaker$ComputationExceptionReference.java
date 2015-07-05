package com.yelp.common.collect;

class MapMaker$ComputationExceptionReference<K, V>
  implements g<K, V>
{
  final Throwable t;
  
  MapMaker$ComputationExceptionReference(Throwable paramThrowable)
  {
    t = paramThrowable;
  }
  
  public g<K, V> copyFor(f<K, V> paramf)
  {
    return this;
  }
  
  public V get()
  {
    return null;
  }
  
  public V waitForValue()
  {
    throw new AsynchronousComputationException(t);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.ComputationExceptionReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */