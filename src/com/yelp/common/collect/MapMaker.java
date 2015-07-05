package com.yelp.common.collect;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;

public final class MapMaker
{
  private static final g<Object, Object> COMPUTING = new e();
  private final CustomConcurrentHashMap.Builder builder = new CustomConcurrentHashMap.Builder();
  private long expirationNanos = 0L;
  private MapMaker.Strength keyStrength = MapMaker.Strength.STRONG;
  private boolean useCustomMap;
  private MapMaker.Strength valueStrength = MapMaker.Strength.STRONG;
  
  private static <K, V> g<K, V> computing()
  {
    return COMPUTING;
  }
  
  private MapMaker setKeyStrength(MapMaker.Strength paramStrength)
  {
    if (keyStrength != MapMaker.Strength.STRONG) {
      throw new IllegalStateException("Key strength was already set to " + keyStrength + ".");
    }
    keyStrength = paramStrength;
    useCustomMap = true;
    return this;
  }
  
  private MapMaker setValueStrength(MapMaker.Strength paramStrength)
  {
    if (valueStrength != MapMaker.Strength.STRONG) {
      throw new IllegalStateException("Value strength was already set to " + valueStrength + ".");
    }
    valueStrength = paramStrength;
    useCustomMap = true;
    return this;
  }
  
  public MapMaker concurrencyLevel(int paramInt)
  {
    builder.concurrencyLevel(paramInt);
    return this;
  }
  
  public MapMaker expiration(long paramLong, TimeUnit paramTimeUnit)
  {
    if (expirationNanos != 0L) {
      throw new IllegalStateException("expiration time of " + expirationNanos + " ns was already set");
    }
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("invalid duration: " + paramLong);
    }
    expirationNanos = paramTimeUnit.toNanos(paramLong);
    useCustomMap = true;
    return this;
  }
  
  public MapMaker initialCapacity(int paramInt)
  {
    builder.initialCapacity(paramInt);
    return this;
  }
  
  public <K, V> ConcurrentMap<K, V> makeComputingMap(com.yelp.common.base.g<? super K, ? extends V> paramg)
  {
    return MapMaker.StrategyImplmap;
  }
  
  public <K, V> ConcurrentMap<K, V> makeMap()
  {
    if (useCustomMap) {
      return MapMaker.StrategyImplmap;
    }
    return new ConcurrentHashMap(builder.getInitialCapacity(), 0.75F, builder.getConcurrencyLevel());
  }
  
  public MapMaker softKeys()
  {
    return setKeyStrength(MapMaker.Strength.SOFT);
  }
  
  public MapMaker softValues()
  {
    return setValueStrength(MapMaker.Strength.SOFT);
  }
  
  public MapMaker weakKeys()
  {
    return setKeyStrength(MapMaker.Strength.WEAK);
  }
  
  public MapMaker weakValues()
  {
    return setValueStrength(MapMaker.Strength.WEAK);
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */