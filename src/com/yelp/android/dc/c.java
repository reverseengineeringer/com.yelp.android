package com.yelp.android.dc;

import java.util.Set;

public class c
{
  private static final ThreadLocal<Set<Object>> a = new ThreadLocal();
  private final int b;
  private int c = 0;
  
  public c()
  {
    b = 37;
    c = 17;
  }
  
  public c(int paramInt1, int paramInt2)
  {
    if (paramInt1 % 2 != 0)
    {
      bool1 = true;
      org.apache.commons.lang3.c.a(bool1, "HashCodeBuilder requires an odd initial value", new Object[0]);
      if (paramInt2 % 2 == 0) {
        break label65;
      }
    }
    label65:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      org.apache.commons.lang3.c.a(bool1, "HashCodeBuilder requires an odd multiplier", new Object[0]);
      b = paramInt2;
      c = paramInt1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int a()
  {
    return c;
  }
  
  public c a(byte paramByte)
  {
    c = (c * b + paramByte);
    return this;
  }
  
  public c a(char paramChar)
  {
    c = (c * b + paramChar);
    return this;
  }
  
  public c a(double paramDouble)
  {
    return a(Double.doubleToLongBits(paramDouble));
  }
  
  public c a(float paramFloat)
  {
    c = (c * b + Float.floatToIntBits(paramFloat));
    return this;
  }
  
  public c a(int paramInt)
  {
    c = (c * b + paramInt);
    return this;
  }
  
  public c a(long paramLong)
  {
    c = (c * b + (int)(paramLong >> 32 ^ paramLong));
    return this;
  }
  
  public c a(Object paramObject)
  {
    if (paramObject == null)
    {
      c *= b;
      return this;
    }
    if (paramObject.getClass().isArray())
    {
      if ((paramObject instanceof long[]))
      {
        a((long[])paramObject);
        return this;
      }
      if ((paramObject instanceof int[]))
      {
        a((int[])paramObject);
        return this;
      }
      if ((paramObject instanceof short[]))
      {
        a((short[])paramObject);
        return this;
      }
      if ((paramObject instanceof char[]))
      {
        a((char[])paramObject);
        return this;
      }
      if ((paramObject instanceof byte[]))
      {
        a((byte[])paramObject);
        return this;
      }
      if ((paramObject instanceof double[]))
      {
        a((double[])paramObject);
        return this;
      }
      if ((paramObject instanceof float[]))
      {
        a((float[])paramObject);
        return this;
      }
      if ((paramObject instanceof boolean[]))
      {
        a((boolean[])paramObject);
        return this;
      }
      a((Object[])paramObject);
      return this;
    }
    c = (c * b + paramObject.hashCode());
    return this;
  }
  
  public c a(short paramShort)
  {
    c = (c * b + paramShort);
    return this;
  }
  
  public c a(boolean paramBoolean)
  {
    int j = c;
    int k = b;
    if (paramBoolean) {}
    for (int i = 0;; i = 1)
    {
      c = (i + k * j);
      return this;
    }
  }
  
  public c a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfByte.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfByte[i]);
        i += 1;
      }
    }
  }
  
  public c a(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfChar.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfChar[i]);
        i += 1;
      }
    }
  }
  
  public c a(double[] paramArrayOfDouble)
  {
    if (paramArrayOfDouble == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfDouble.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfDouble[i]);
        i += 1;
      }
    }
  }
  
  public c a(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfFloat.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfFloat[i]);
        i += 1;
      }
    }
  }
  
  public c a(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfInt[i]);
        i += 1;
      }
    }
  }
  
  public c a(long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfLong[i]);
        i += 1;
      }
    }
  }
  
  public c a(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfObject.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfObject[i]);
        i += 1;
      }
    }
  }
  
  public c a(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfShort.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfShort[i]);
        i += 1;
      }
    }
  }
  
  public c a(boolean[] paramArrayOfBoolean)
  {
    if (paramArrayOfBoolean == null) {
      c *= b;
    }
    for (;;)
    {
      return this;
      int j = paramArrayOfBoolean.length;
      int i = 0;
      while (i < j)
      {
        a(paramArrayOfBoolean[i]);
        i += 1;
      }
    }
  }
  
  public c b(int paramInt)
  {
    c = (c * b + paramInt);
    return this;
  }
  
  public int hashCode()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dc.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */