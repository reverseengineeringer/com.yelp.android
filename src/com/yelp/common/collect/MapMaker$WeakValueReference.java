package com.yelp.common.collect;

class MapMaker$WeakValueReference<K, V>
  extends com.yelp.common.base.f<V>
  implements g<K, V>
{
  final f<K, V> entry;
  
  MapMaker$WeakValueReference(V paramV, f<K, V> paramf)
  {
    super(paramV, MapMaker.QueueHolder.queue);
    entry = paramf;
  }
  
  public g<K, V> copyFor(f<K, V> paramf)
  {
    return new WeakValueReference(get(), paramf);
  }
  
  public void finalizeReferent()
  {
    entry.valueReclaimed();
  }
  
  public V waitForValue()
  {
    return (V)get();
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.WeakValueReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */