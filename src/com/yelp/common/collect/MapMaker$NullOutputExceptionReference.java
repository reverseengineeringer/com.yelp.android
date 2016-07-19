package com.yelp.common.collect;

class MapMaker$NullOutputExceptionReference<K, V>
  implements MapMaker.b<K, V>
{
  final String message;
  
  MapMaker$NullOutputExceptionReference(String paramString)
  {
    message = paramString;
  }
  
  public MapMaker.b<K, V> copyFor(MapMaker.a<K, V> parama)
  {
    return this;
  }
  
  public V get()
  {
    return null;
  }
  
  public V waitForValue()
  {
    throw new NullOutputException(message);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.NullOutputExceptionReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */