package com.yelp.common.collect;

class CustomConcurrentHashMap$SimpleInternalEntry<K, V>
{
  final int hash;
  final K key;
  final SimpleInternalEntry<K, V> next;
  volatile V value;
  
  CustomConcurrentHashMap$SimpleInternalEntry(K paramK, int paramInt, V paramV, SimpleInternalEntry<K, V> paramSimpleInternalEntry)
  {
    key = paramK;
    hash = paramInt;
    value = paramV;
    next = paramSimpleInternalEntry;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.SimpleInternalEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */