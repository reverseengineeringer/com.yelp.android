package com.yelp.common.collect;

class MapMaker$StrongValueReference<K, V>
  implements g<K, V>
{
  final V referent;
  
  MapMaker$StrongValueReference(V paramV)
  {
    referent = paramV;
  }
  
  public g<K, V> copyFor(f<K, V> paramf)
  {
    return this;
  }
  
  public V get()
  {
    return (V)referent;
  }
  
  public V waitForValue()
  {
    return (V)get();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrongValueReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */