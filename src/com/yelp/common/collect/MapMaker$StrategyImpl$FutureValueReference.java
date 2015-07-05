package com.yelp.common.collect;

class MapMaker$StrategyImpl$FutureValueReference
  implements g<K, V>
{
  final f<K, V> newEntry;
  final f<K, V> original;
  
  MapMaker$StrategyImpl$FutureValueReference(f<K, V> paramf1, f<K, V> paramf2)
  {
    original = paramf2;
    f localf;
    newEntry = localf;
  }
  
  public g<K, V> copyFor(f<K, V> paramf)
  {
    return new FutureValueReference(this$0, original, paramf);
  }
  
  public V get()
  {
    try
    {
      Object localObject1 = original.getValueReference().get();
      return (V)localObject1;
    }
    finally
    {
      removeEntry();
    }
  }
  
  void removeEntry()
  {
    this$0.internals.removeEntry(newEntry);
  }
  
  public V waitForValue()
  {
    try
    {
      Object localObject1 = this$0.waitForValue(original);
      return (V)localObject1;
    }
    finally
    {
      removeEntry();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrategyImpl.FutureValueReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */