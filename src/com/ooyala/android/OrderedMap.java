package com.ooyala.android;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class OrderedMap<K, V extends OrderedMapValue<K>>
  implements Iterable<V>
{
  private List<V> _array = new ArrayList();
  private Map<K, Integer> _keyToIndex = new HashMap();
  private Map<K, V> _map = new HashMap();
  
  private void recomputeIndicies()
  {
    _keyToIndex.clear();
    Iterator localIterator = _array.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      OrderedMapValue localOrderedMapValue = (OrderedMapValue)localIterator.next();
      _keyToIndex.put(localOrderedMapValue.getKey(), Integer.valueOf(i));
      i += 1;
    }
  }
  
  private int verifyIndex(int paramInt)
    throws ArrayIndexOutOfBoundsException
  {
    if ((paramInt >= _array.size()) || (paramInt < 0)) {
      throw new ArrayIndexOutOfBoundsException(paramInt);
    }
    return paramInt;
  }
  
  public void add(int paramInt, V paramV)
  {
    _array.add(paramInt, paramV);
    _map.put(paramV.getKey(), paramV);
    recomputeIndicies();
  }
  
  public boolean add(V paramV)
  {
    _map.put(paramV.getKey(), paramV);
    _keyToIndex.put(paramV.getKey(), Integer.valueOf(_array.size()));
    _array.add(paramV);
    return true;
  }
  
  public boolean addAll(int paramInt, Collection<? extends V> paramCollection)
  {
    _array.addAll(paramInt, paramCollection);
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      OrderedMapValue localOrderedMapValue = (OrderedMapValue)paramCollection.next();
      _map.put(localOrderedMapValue.getKey(), localOrderedMapValue);
    }
    recomputeIndicies();
    return true;
  }
  
  public boolean addAll(Collection<? extends V> paramCollection)
  {
    _array.addAll(paramCollection);
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      OrderedMapValue localOrderedMapValue = (OrderedMapValue)paramCollection.next();
      _map.put(localOrderedMapValue.getKey(), localOrderedMapValue);
    }
    recomputeIndicies();
    return true;
  }
  
  public void clear()
  {
    _map.clear();
    _array.clear();
    _keyToIndex.clear();
  }
  
  public boolean contains(V paramV)
  {
    return _array.contains(paramV);
  }
  
  public boolean containsAll(Collection<V> paramCollection)
  {
    return _array.containsAll(paramCollection);
  }
  
  public boolean containsKey(K paramK)
  {
    return _map.containsKey(paramK);
  }
  
  public boolean containsValue(V paramV)
  {
    return _map.containsValue(paramV);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return _map.entrySet();
  }
  
  public V get(int paramInt)
  {
    return (OrderedMapValue)_array.get(paramInt);
  }
  
  public V get(K paramK)
  {
    return (OrderedMapValue)_map.get(paramK);
  }
  
  public int indexForKey(K paramK)
  {
    paramK = (Integer)_keyToIndex.get(paramK);
    if (paramK == null) {
      return -1;
    }
    return paramK.intValue();
  }
  
  public int indexForValue(V paramV)
  {
    paramV = (Integer)_keyToIndex.get(paramV.getKey());
    if (paramV == null) {
      return -1;
    }
    return paramV.intValue();
  }
  
  public int indexOf(V paramV)
  {
    return _array.indexOf(paramV);
  }
  
  public boolean isEmpty()
  {
    return _array.isEmpty();
  }
  
  public Iterator<V> iterator()
  {
    return _array.iterator();
  }
  
  public Set<K> keySet()
  {
    return _map.keySet();
  }
  
  public int lastIndexOf(V paramV)
  {
    return _array.lastIndexOf(paramV);
  }
  
  public ListIterator<V> listIterator()
  {
    return _array.listIterator();
  }
  
  public ListIterator<V> listIterator(int paramInt)
  {
    return _array.listIterator(paramInt);
  }
  
  public V put(K paramK, V paramV)
  {
    _keyToIndex.put(paramK, Integer.valueOf(_array.size()));
    _array.add(paramV);
    return (OrderedMapValue)_map.put(paramK, paramV);
  }
  
  public V remove(int paramInt)
  {
    paramInt = verifyIndex(paramInt);
    OrderedMapValue localOrderedMapValue = (OrderedMapValue)_array.remove(paramInt);
    _map.remove(localOrderedMapValue.getKey());
    _keyToIndex.remove(localOrderedMapValue.getKey());
    recomputeIndicies();
    return localOrderedMapValue;
  }
  
  public V remove(V paramV)
  {
    OrderedMapValue localOrderedMapValue = (OrderedMapValue)_map.remove(paramV.getKey());
    _array.remove(paramV);
    _keyToIndex.remove(paramV.getKey());
    return localOrderedMapValue;
  }
  
  public V remove(K paramK)
  {
    OrderedMapValue localOrderedMapValue = (OrderedMapValue)_map.remove(paramK);
    _array.remove(localOrderedMapValue);
    _keyToIndex.remove(paramK);
    recomputeIndicies();
    return localOrderedMapValue;
  }
  
  public V set(int paramInt, V paramV)
  {
    OrderedMapValue localOrderedMapValue = remove(paramInt);
    add(paramInt, paramV);
    return localOrderedMapValue;
  }
  
  public int size()
  {
    return _array.size();
  }
  
  public List<V> subList(int paramInt1, int paramInt2)
  {
    return _array.subList(paramInt1, paramInt2);
  }
  
  public Object[] toArray()
  {
    return _array.toArray();
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return _array.toArray(paramArrayOfT);
  }
  
  public Collection<V> values()
  {
    return _map.values();
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OrderedMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */