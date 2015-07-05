package com.bumptech.glide.load.resource.bitmap;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class p
{
  private final ByteBuffer a;
  
  public p(byte[] paramArrayOfByte)
  {
    a = ByteBuffer.wrap(paramArrayOfByte);
    a.order(ByteOrder.BIG_ENDIAN);
  }
  
  public int a()
  {
    return a.array().length;
  }
  
  public int a(int paramInt)
  {
    return a.getInt(paramInt);
  }
  
  public void a(ByteOrder paramByteOrder)
  {
    a.order(paramByteOrder);
  }
  
  public short b(int paramInt)
  {
    return a.getShort(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */