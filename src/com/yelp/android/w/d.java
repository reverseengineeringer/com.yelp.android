package com.yelp.android.w;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class d
  extends FilterInputStream
{
  private static final byte[] a = { -1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0 };
  private static final int b = a.length;
  private static final int c = b + 2;
  private final byte d;
  private int e;
  
  public d(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    if ((paramInt < -1) || (paramInt > 8)) {
      throw new IllegalArgumentException("Cannot add invalid orientation: " + paramInt);
    }
    d = ((byte)paramInt);
  }
  
  public void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
    throws IOException
  {
    int i;
    if ((e < 2) || (e > c)) {
      i = super.read();
    }
    for (;;)
    {
      if (i != -1) {
        e += 1;
      }
      return i;
      if (e == c) {
        i = d;
      } else {
        i = a[(e - 2)] & 0xFF;
      }
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (e > c) {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (paramInt1 > 0) {
        e += paramInt1;
      }
      return paramInt1;
      if (e == c)
      {
        paramArrayOfByte[paramInt1] = d;
        paramInt1 = 1;
      }
      else if (e < 2)
      {
        paramInt1 = super.read(paramArrayOfByte, paramInt1, 2 - e);
      }
      else
      {
        paramInt2 = Math.min(c - e, paramInt2);
        System.arraycopy(a, e - 2, paramArrayOfByte, paramInt1, paramInt2);
        paramInt1 = paramInt2;
      }
    }
  }
  
  public void reset()
    throws IOException
  {
    throw new UnsupportedOperationException();
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    paramLong = super.skip(paramLong);
    if (paramLong > 0L) {
      e = ((int)(e + paramLong));
    }
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */