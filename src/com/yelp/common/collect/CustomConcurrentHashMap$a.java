package com.yelp.common.collect;

import com.yelp.common.base.d;

public abstract interface CustomConcurrentHashMap$a<K, V, E>
  extends CustomConcurrentHashMap.c<K, V, E>
{
  public abstract V compute(K paramK, E paramE, d<? super K, ? extends V> paramd);
  
  public abstract V waitForValue(E paramE)
    throws InterruptedException;
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */