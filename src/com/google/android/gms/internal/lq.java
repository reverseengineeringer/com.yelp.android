package com.google.android.gms.internal;

import java.io.IOException;

public abstract class lq
{
  protected volatile int S = -1;
  
  public static final void a(lq paramlq, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = zzsn.a(paramArrayOfByte, paramInt1, paramInt2);
      paramlq.a(paramArrayOfByte);
      paramArrayOfByte.b();
      return;
    }
    catch (IOException paramlq)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramlq);
    }
  }
  
  public static final byte[] a(lq paramlq)
  {
    byte[] arrayOfByte = new byte[paramlq.g()];
    a(paramlq, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {}
  
  protected int b()
  {
    return 0;
  }
  
  public abstract lq b(lk paramlk)
    throws IOException;
  
  public lq e()
    throws CloneNotSupportedException
  {
    return (lq)super.clone();
  }
  
  public int f()
  {
    if (S < 0) {
      g();
    }
    return S;
  }
  
  public int g()
  {
    int i = b();
    S = i;
    return i;
  }
  
  public String toString()
  {
    return lr.a(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */