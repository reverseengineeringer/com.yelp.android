package com.yelp.common.collect;

import com.yelp.common.base.g;

public abstract interface b<K, V, E>
  extends d<K, V, E>
{
  public abstract V compute(K paramK, E paramE, g<? super K, ? extends V> paramg);
  
  public abstract V waitForValue(E paramE);
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */