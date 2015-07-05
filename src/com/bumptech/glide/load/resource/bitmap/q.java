package com.bumptech.glide.load.resource.bitmap;

import java.io.InputStream;

class q
{
  private final InputStream a;
  
  public q(InputStream paramInputStream)
  {
    a = paramInputStream;
  }
  
  public int a()
  {
    return a.read() << 8 & 0xFF00 | a.read() & 0xFF;
  }
  
  public int a(byte[] paramArrayOfByte)
  {
    return a.read(paramArrayOfByte);
  }
  
  public long a(long paramLong)
  {
    return a.skip(paramLong);
  }
  
  public short b()
  {
    return (short)(a.read() & 0xFF);
  }
  
  public int c()
  {
    return a.read();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */