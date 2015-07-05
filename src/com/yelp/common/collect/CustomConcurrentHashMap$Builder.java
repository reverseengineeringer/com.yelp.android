package com.yelp.common.collect;

import com.yelp.common.base.g;
import java.util.concurrent.ConcurrentMap;

final class CustomConcurrentHashMap$Builder
{
  private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
  private static final int DEFAULT_INITIAL_CAPACITY = 16;
  private static final int UNSET_CONCURRENCY_LEVEL = -1;
  private static final int UNSET_INITIAL_CAPACITY = -1;
  int concurrencyLevel = -1;
  int initialCapacity = -1;
  
  public <K, V, E> ConcurrentMap<K, V> buildComputingMap(b<K, V, E> paramb, g<? super K, ? extends V> paramg)
  {
    if (paramb == null) {
      throw new NullPointerException("strategy");
    }
    if (paramg == null) {
      throw new NullPointerException("computer");
    }
    return new CustomConcurrentHashMap.ComputingImpl(paramb, this, paramg);
  }
  
  public <K, V, E> ConcurrentMap<K, V> buildMap(d<K, V, E> paramd)
  {
    if (paramd == null) {
      throw new NullPointerException("strategy");
    }
    return new CustomConcurrentHashMap.Impl(paramd, this);
  }
  
  public Builder concurrencyLevel(int paramInt)
  {
    if (concurrencyLevel != -1) {
      throw new IllegalStateException("concurrency level was already set to " + concurrencyLevel);
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException();
    }
    concurrencyLevel = paramInt;
    return this;
  }
  
  int getConcurrencyLevel()
  {
    if (concurrencyLevel == -1) {
      return 16;
    }
    return concurrencyLevel;
  }
  
  int getInitialCapacity()
  {
    if (initialCapacity == -1) {
      return 16;
    }
    return initialCapacity;
  }
  
  public Builder initialCapacity(int paramInt)
  {
    if (initialCapacity != -1) {
      throw new IllegalStateException("initial capacity was already set to " + initialCapacity);
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException();
    }
    initialCapacity = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */