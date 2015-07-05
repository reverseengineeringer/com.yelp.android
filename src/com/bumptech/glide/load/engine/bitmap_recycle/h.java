package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.ArrayList;
import java.util.List;

class h<K, V>
{
  h<K, V> a = this;
  h<K, V> b = this;
  private final K c;
  private List<V> d;
  
  public h()
  {
    this(null);
  }
  
  public h(K paramK)
  {
    c = paramK;
  }
  
  public V a()
  {
    int i = b();
    if (i > 0) {
      return (V)d.remove(i - 1);
    }
    return null;
  }
  
  public void a(V paramV)
  {
    if (d == null) {
      d = new ArrayList();
    }
    d.add(paramV);
  }
  
  public int b()
  {
    if (d != null) {
      return d.size();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */