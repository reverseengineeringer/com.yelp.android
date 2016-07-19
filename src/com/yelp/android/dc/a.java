package com.yelp.android.dc;

import java.util.Comparator;

public class a
{
  private int a = 0;
  
  public int a()
  {
    return a;
  }
  
  public a a(byte paramByte1, byte paramByte2)
  {
    if (a != 0) {
      return this;
    }
    if (paramByte1 < paramByte2) {
      paramByte1 = -1;
    }
    for (;;)
    {
      a = paramByte1;
      return this;
      if (paramByte1 > paramByte2) {
        paramByte1 = 1;
      } else {
        paramByte1 = 0;
      }
    }
  }
  
  public a a(char paramChar1, char paramChar2)
  {
    if (a != 0) {
      return this;
    }
    if (paramChar1 < paramChar2) {
      paramChar1 = '￿';
    }
    for (;;)
    {
      a = paramChar1;
      return this;
      if (paramChar1 > paramChar2) {
        paramChar1 = '\001';
      } else {
        paramChar1 = '\000';
      }
    }
  }
  
  public a a(double paramDouble1, double paramDouble2)
  {
    if (a != 0) {
      return this;
    }
    a = Double.compare(paramDouble1, paramDouble2);
    return this;
  }
  
  public a a(float paramFloat1, float paramFloat2)
  {
    if (a != 0) {
      return this;
    }
    a = Float.compare(paramFloat1, paramFloat2);
    return this;
  }
  
  public a a(int paramInt1, int paramInt2)
  {
    if (a != 0) {
      return this;
    }
    if (paramInt1 < paramInt2) {
      paramInt1 = -1;
    }
    for (;;)
    {
      a = paramInt1;
      return this;
      if (paramInt1 > paramInt2) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
    }
  }
  
  public a a(long paramLong1, long paramLong2)
  {
    if (a != 0) {
      return this;
    }
    int i;
    if (paramLong1 < paramLong2) {
      i = -1;
    }
    for (;;)
    {
      a = i;
      return this;
      if (paramLong1 > paramLong2) {
        i = 1;
      } else {
        i = 0;
      }
    }
  }
  
  public a a(Object paramObject1, Object paramObject2)
  {
    return a(paramObject1, paramObject2, null);
  }
  
  public a a(Object paramObject1, Object paramObject2, Comparator<?> paramComparator)
  {
    if (a != 0) {}
    while (paramObject1 == paramObject2) {
      return this;
    }
    if (paramObject1 == null)
    {
      a = -1;
      return this;
    }
    if (paramObject2 == null)
    {
      a = 1;
      return this;
    }
    if (paramObject1.getClass().isArray())
    {
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
      a((Object[])paramObject1, (Object[])paramObject2, paramComparator);
      return this;
    }
    if (paramComparator == null)
    {
      a = ((Comparable)paramObject1).compareTo(paramObject2);
      return this;
    }
    a = paramComparator.compare(paramObject1, paramObject2);
    return this;
  }
  
  public a a(short paramShort1, short paramShort2)
  {
    if (a != 0) {
      return this;
    }
    if (paramShort1 < paramShort2) {
      paramShort1 = -1;
    }
    for (;;)
    {
      a = paramShort1;
      return this;
      if (paramShort1 > paramShort2) {
        paramShort1 = 1;
      } else {
        paramShort1 = 0;
      }
    }
  }
  
  public a a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (a != 0) {}
    while (paramBoolean1 == paramBoolean2) {
      return this;
    }
    if (!paramBoolean1)
    {
      a = -1;
      return this;
    }
    a = 1;
    return this;
  }
  
  public a a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfByte1 != paramArrayOfByte2)
      {
        if (paramArrayOfByte1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfByte2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfByte1.length != paramArrayOfByte2.length)
        {
          if (paramArrayOfByte1.length < paramArrayOfByte2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfByte1.length) && (a == 0))
        {
          a(paramArrayOfByte1[i], paramArrayOfByte2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(char[] paramArrayOfChar1, char[] paramArrayOfChar2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfChar1 != paramArrayOfChar2)
      {
        if (paramArrayOfChar1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfChar2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfChar1.length != paramArrayOfChar2.length)
        {
          if (paramArrayOfChar1.length < paramArrayOfChar2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfChar1.length) && (a == 0))
        {
          a(paramArrayOfChar1[i], paramArrayOfChar2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(double[] paramArrayOfDouble1, double[] paramArrayOfDouble2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfDouble1 != paramArrayOfDouble2)
      {
        if (paramArrayOfDouble1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfDouble2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfDouble1.length != paramArrayOfDouble2.length)
        {
          if (paramArrayOfDouble1.length < paramArrayOfDouble2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfDouble1.length) && (a == 0))
        {
          a(paramArrayOfDouble1[i], paramArrayOfDouble2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfFloat1 != paramArrayOfFloat2)
      {
        if (paramArrayOfFloat1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfFloat2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfFloat1.length != paramArrayOfFloat2.length)
        {
          if (paramArrayOfFloat1.length < paramArrayOfFloat2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfFloat1.length) && (a == 0))
        {
          a(paramArrayOfFloat1[i], paramArrayOfFloat2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfInt1 != paramArrayOfInt2)
      {
        if (paramArrayOfInt1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfInt2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfInt1.length != paramArrayOfInt2.length)
        {
          if (paramArrayOfInt1.length < paramArrayOfInt2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfInt1.length) && (a == 0))
        {
          a(paramArrayOfInt1[i], paramArrayOfInt2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfLong1 != paramArrayOfLong2)
      {
        if (paramArrayOfLong1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfLong2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfLong1.length != paramArrayOfLong2.length)
        {
          if (paramArrayOfLong1.length < paramArrayOfLong2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfLong1.length) && (a == 0))
        {
          a(paramArrayOfLong1[i], paramArrayOfLong2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2, Comparator<?> paramComparator)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfObject1 != paramArrayOfObject2)
      {
        if (paramArrayOfObject1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfObject2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfObject1.length != paramArrayOfObject2.length)
        {
          if (paramArrayOfObject1.length < paramArrayOfObject2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfObject1.length) && (a == 0))
        {
          a(paramArrayOfObject1[i], paramArrayOfObject2[i], paramComparator);
          i += 1;
        }
      }
    }
  }
  
  public a a(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfShort1 != paramArrayOfShort2)
      {
        if (paramArrayOfShort1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfShort2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfShort1.length != paramArrayOfShort2.length)
        {
          if (paramArrayOfShort1.length < paramArrayOfShort2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfShort1.length) && (a == 0))
        {
          a(paramArrayOfShort1[i], paramArrayOfShort2[i]);
          i += 1;
        }
      }
    }
  }
  
  public a a(boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2)
  {
    int i = -1;
    if (a != 0) {}
    for (;;)
    {
      return this;
      if (paramArrayOfBoolean1 != paramArrayOfBoolean2)
      {
        if (paramArrayOfBoolean1 == null)
        {
          a = -1;
          return this;
        }
        if (paramArrayOfBoolean2 == null)
        {
          a = 1;
          return this;
        }
        if (paramArrayOfBoolean1.length != paramArrayOfBoolean2.length)
        {
          if (paramArrayOfBoolean1.length < paramArrayOfBoolean2.length) {}
          for (;;)
          {
            a = i;
            return this;
            i = 1;
          }
        }
        i = 0;
        while ((i < paramArrayOfBoolean1.length) && (a == 0))
        {
          a(paramArrayOfBoolean1[i], paramArrayOfBoolean2[i]);
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */