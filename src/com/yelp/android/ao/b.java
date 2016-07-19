package com.yelp.android.ao;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class b
  extends FilterInputStream
{
  private final long a;
  private int b;
  
  b(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    a = paramLong;
  }
  
  private int a(int paramInt)
    throws IOException
  {
    if (paramInt >= 0) {
      b += paramInt;
    }
    while (a - b <= 0L) {
      return paramInt;
    }
    throw new IOException("Failed to read all expected data, expected: " + a + ", but read: " + b);
  }
  
  public static InputStream a(InputStream paramInputStream, long paramLong)
  {
    return new b(paramInputStream, paramLong);
  }
  
  public int available()
    throws IOException
  {
    try
    {
      long l = Math.max(a - b, in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int read()
    throws IOException
  {
    try
    {
      int i = a(super.read());
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = a(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */