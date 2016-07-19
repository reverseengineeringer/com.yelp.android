package com.google.android.gms.internal;

import com.yelp.android.g.a;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class jp<E>
  extends AbstractSet<E>
{
  private final a<E, E> a;
  
  public jp()
  {
    a = new a();
  }
  
  public jp(int paramInt)
  {
    a = new a(paramInt);
  }
  
  public jp(Collection<E> paramCollection)
  {
    this(paramCollection.size());
    addAll(paramCollection);
  }
  
  public boolean a(jp<? extends E> paramjp)
  {
    int i = size();
    a.a(a);
    return size() > i;
  }
  
  public boolean add(E paramE)
  {
    if (a.containsKey(paramE)) {
      return false;
    }
    a.put(paramE, paramE);
    return true;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    if ((paramCollection instanceof jp)) {
      return a((jp)paramCollection);
    }
    return super.addAll(paramCollection);
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  public Iterator<E> iterator()
  {
    return a.keySet().iterator();
  }
  
  public boolean remove(Object paramObject)
  {
    if (!a.containsKey(paramObject)) {
      return false;
    }
    a.remove(paramObject);
    return true;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */