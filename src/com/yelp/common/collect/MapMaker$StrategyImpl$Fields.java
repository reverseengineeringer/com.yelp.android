package com.yelp.common.collect;

import java.lang.reflect.Field;

class MapMaker$StrategyImpl$Fields
{
  static final Field expirationNanos = findField("expirationNanos");
  static final Field internals = findField("internals");
  static final Field keyStrength = findField("keyStrength");
  static final Field map = findField("map");
  static final Field valueStrength = findField("valueStrength");
  
  static Field findField(String paramString)
  {
    try
    {
      paramString = MapMaker.StrategyImpl.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      return paramString;
    }
    catch (NoSuchFieldException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrategyImpl.Fields
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */