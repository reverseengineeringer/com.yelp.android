package com.google.android.gms.internal;

import java.io.IOException;

class p
  implements n
{
  private qp lb;
  private byte[] lc;
  private final int ld;
  
  public p(int paramInt)
  {
    ld = paramInt;
    reset();
  }
  
  public byte[] D()
  {
    int i = lb.rO();
    if (i < 0) {
      throw new IOException();
    }
    if (i == 0) {
      return lc;
    }
    byte[] arrayOfByte = new byte[lc.length - i];
    System.arraycopy(lc, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void b(int paramInt, long paramLong)
  {
    lb.b(paramInt, paramLong);
  }
  
  public void b(int paramInt, String paramString)
  {
    lb.b(paramInt, paramString);
  }
  
  public void reset()
  {
    lc = new byte[ld];
    lb = qp.q(lc);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */