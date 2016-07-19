package com.yelp.android.dc;

import java.util.Set;
import org.apache.commons.lang3.tuple.Pair;

public class b
{
  private static final ThreadLocal<Set<Pair<Object, Object>>> a = new ThreadLocal();
  private boolean b = true;
  
  public b a(byte paramByte1, byte paramByte2)
  {
    if (!b) {
      return this;
    }
    if (paramByte1 == paramByte2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  public b a(char paramChar1, char paramChar2)
  {
    if (!b) {
      return this;
    }
    if (paramChar1 == paramChar2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  public b a(double paramDouble1, double paramDouble2)
  {
    if (!b) {
      return this;
    }
    return a(Double.doubleToLongBits(paramDouble1), Double.doubleToLongBits(paramDouble2));
  }
  
  public b a(float paramFloat1, float paramFloat2)
  {
    if (!b) {
      return this;
    }
    return a(Float.floatToIntBits(paramFloat1), Float.floatToIntBits(paramFloat2));
  }
  
  public b a(int paramInt1, int paramInt2)
  {
    if (!b) {
      return this;
    }
    if (paramInt1 == paramInt2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  public b a(long paramLong1, long paramLong2)
  {
    if (!b) {
      return this;
    }
    if (paramLong1 == paramLong2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  public b a(Object paramObject1, Object paramObject2)
  {
    if (!b) {}
    while (paramObject1 == paramObject2) {
      return this;
    }
    if ((paramObject1 == null) || (paramObject2 == null))
    {
      b(false);
      return this;
    }
    if (!paramObject1.getClass().isArray())
    {
      b = paramObject1.equals(paramObject2);
      return this;
    }
    if (paramObject1.getClass() != paramObject2.getClass())
    {
      b(false);
      return this;
    }
    if ((paramObject1 instanceof long[]))
    {
      a((long[])paramObject1, (long[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof int[]))
    {
      a((int[])paramObject1, (int[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof short[]))
    {
      a((short[])paramObject1, (short[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof char[]))
    {
      a((char[])paramObject1, (char[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof byte[]))
    {
      a((byte[])paramObject1, (byte[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof double[]))
    {
      a((double[])paramObject1, (double[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof float[]))
    {
      a((float[])paramObject1, (float[])paramObject2);
      return this;
    }
    if ((paramObject1 instanceof boolean[]))
    {
      a((boolean[])paramObject1, (boolean[])paramObject2);
      return this;
    }
    a((Object[])paramObject1, (Object[])paramObject2);
    return this;
  }
  
  public b a(short paramShort1, short paramShort2)
  {
    if (!b) {
      return this;
    }
    if (paramShort1 == paramShort2) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return this;
    }
  }
  
  public b a(boolean paramBoolean)
  {
    if (!b) {
      return this;
    }
    b = paramBoolean;
    return this;
  }
  
  public b a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!b) {
      return this;
    }
    if (paramBoolean1 == paramBoolean2) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      b = paramBoolean1;
      return this;
    }
  }
  
  public b a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfByte1 != paramArrayOfByte2)
      {
        if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfByte1.length != paramArrayOfByte2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfByte1.length) && (b))
        {
          a(paramArrayOfByte1[i], paramArrayOfByte2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfChar1 != paramArrayOfChar2)
      {
        if ((paramArrayOfChar1 == null) || (paramArrayOfChar2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfChar1.length != paramArrayOfChar2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfChar1.length) && (b))
        {
          a(paramArrayOfChar1[i], paramArrayOfChar2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfDouble1 != paramArrayOfDouble2)
      {
        if ((paramArrayOfDouble1 == null) || (paramArrayOfDouble2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfDouble1.length != paramArrayOfDouble2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfDouble1.length) && (b))
        {
          a(paramArrayOfDouble1[i], paramArrayOfDouble2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfFloat1 != paramArrayOfFloat2)
      {
        if ((paramArrayOfFloat1 == null) || (paramArrayOfFloat2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfFloat1.length != paramArrayOfFloat2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfFloat1.length) && (b))
        {
          a(paramArrayOfFloat1[i], paramArrayOfFloat2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfInt1 != paramArrayOfInt2)
      {
        if ((paramArrayOfInt1 == null) || (paramArrayOfInt2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfInt1.length != paramArrayOfInt2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfInt1.length) && (b))
        {
          a(paramArrayOfInt1[i], paramArrayOfInt2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfLong1 != paramArrayOfLong2)
      {
        if ((paramArrayOfLong1 == null) || (paramArrayOfLong2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfLong1.length != paramArrayOfLong2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfLong1.length) && (b))
        {
          a(paramArrayOfLong1[i], paramArrayOfLong2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfObject1 != paramArrayOfObject2)
      {
        if ((paramArrayOfObject1 == null) || (paramArrayOfObject2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfObject1.length != paramArrayOfObject2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfObject1.length) && (b))
        {
          a(paramArrayOfObject1[i], paramArrayOfObject2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfShort1 != paramArrayOfShort2)
      {
        if ((paramArrayOfShort1 == null) || (paramArrayOfShort2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfShort1.length != paramArrayOfShort2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfShort1.length) && (b))
        {
          a(paramArrayOfShort1[i], paramArrayOfShort2[i]);
          i += 1;
        }
      }
    }
  }
  
  public b a(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    int i = 0;
    if (!b) {}
    for (;;)
    {
      return this;
      if (paramArrayOfBoolean1 != paramArrayOfBoolean2)
      {
        if ((paramArrayOfBoolean1 == null) || (paramArrayOfBoolean2 == null))
        {
          b(false);
          return this;
        }
        if (paramArrayOfBoolean1.length != paramArrayOfBoolean2.length)
        {
          b(false);
          return this;
        }
        while ((i < paramArrayOfBoolean1.length) && (b))
        {
          a(paramArrayOfBoolean1[i], paramArrayOfBoolean2[i]);
          i += 1;
        }
      }
    }
  }
  
  public boolean a()
  {
    return b;
  }
  
  protected void b(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dc.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */