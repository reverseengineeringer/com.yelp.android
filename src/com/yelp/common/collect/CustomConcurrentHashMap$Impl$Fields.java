package com.yelp.common.collect;

import java.lang.reflect.Field;

class CustomConcurrentHashMap$Impl$Fields
{
  static final Field segmentMask = findField("segmentMask");
  static final Field segmentShift = findField("segmentShift");
  static final Field segments = findField("segments");
  static final Field strategy = findField("strategy");
  
  static Field findField(String paramString)
  {
    try
    {
      paramString = CustomConcurrentHashMap.Impl.class.getDeclaredField(paramString);
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
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap.Impl.Fields
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */