package com.yelp.common.collect;

class MapMaker$StrategyImpl$FutureValueReference
  implements MapMaker.b<K, V>
{
  final MapMaker.a<K, V> newEntry;
  final MapMaker.a<K, V> original;
  
  MapMaker$StrategyImpl$FutureValueReference(MapMaker.a<K, V> parama1, MapMaker.a<K, V> parama2)
  {
    original = parama2;
    MapMaker.a locala;
    newEntry = locala;
  }
  
  public MapMaker.b<K, V> copyFor(MapMaker.a<K, V> parama)
  {
    return new FutureValueReference(this$0, original, parama);
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
    throws InterruptedException
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