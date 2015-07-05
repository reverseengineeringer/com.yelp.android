package com.yelp.common.collect;

final class CustomConcurrentHashMap$Impl$WriteThroughEntry
  extends a<K, V>
{
  final K key;
  V value;
  
  CustomConcurrentHashMap$Impl$WriteThroughEntry(K paramK, V paramV)
  {
    key = paramV;
    Object localObject;
    value = localObject;
  }
  
  public K getKey()
  {
    return (K)key;
  }
  
  public V getValue()
  {
    return (V)value;
  }
  
  public V setValue(V paramV)
  {
    if (paramV == null) {
      throw new NullPointerException();
    }
    Object localObject = this$0.put(getKey(), paramV);
    value = paramV;
    return (V)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.WriteThroughEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */