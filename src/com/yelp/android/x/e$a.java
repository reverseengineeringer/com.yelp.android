package com.yelp.android.x;

import java.util.ArrayList;
import java.util.List;

class e$a<K, V>
{
  a<K, V> a = this;
  a<K, V> b = this;
  private final K c;
  private List<V> d;
  
  public e$a()
  {
    this(null);
  }
  
  public e$a(K paramK)
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
 * Qualified Name:     com.yelp.android.x.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */