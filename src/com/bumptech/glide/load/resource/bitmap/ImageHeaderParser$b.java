package com.bumptech.glide.load.resource.bitmap;

import java.io.IOException;
import java.io.InputStream;

class ImageHeaderParser$b
{
  private final InputStream a;
  
  public ImageHeaderParser$b(InputStream paramInputStream)
  {
    a = paramInputStream;
  }
  
  public int a()
    throws IOException
  {
    return a.read() << 8 & 0xFF00 | a.read() & 0xFF;
  }
  
  public int a(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = paramArrayOfByte.length;
    while (i > 0)
    {
      int j = a.read(paramArrayOfByte, paramArrayOfByte.length - i, i);
      if (j == -1) {
        break;
      }
      i -= j;
    }
    return paramArrayOfByte.length - i;
  }
  
  public long a(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      return 0L;
    }
    long l1 = paramLong;
    for (;;)
    {
      if (l1 > 0L)
      {
        long l2 = a.skip(l1);
        if (l2 > 0L)
        {
          l1 -= l2;
          continue;
        }
        if (a.read() != -1) {}
      }
      else
      {
        return paramLong - l1;
      }
      l1 -= 1L;
    }
  }
  
  public short b()
    throws IOException
  {
    return (short)(a.read() & 0xFF);
  }
  
  public int c()
    throws IOException
  {
    return a.read();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */