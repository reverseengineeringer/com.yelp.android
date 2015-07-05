package com.yelp.common.collect;

final class CustomConcurrentHashMap
{
  private static int b(int paramInt)
  {
    paramInt = (paramInt << 15 ^ 0xCD7D) + paramInt;
    paramInt ^= paramInt >>> 10;
    paramInt += (paramInt << 3);
    paramInt ^= paramInt >>> 6;
    paramInt += (paramInt << 2) + (paramInt << 14);
    return paramInt ^ paramInt >>> 16;
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.CustomConcurrentHashMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */