package com.google.android.gms.internal;

import java.io.IOException;

public abstract class qw
{
  protected volatile int azh = -1;
  
  public static final <T extends qw> T a(T paramT, byte[] paramArrayOfByte)
  {
    return b(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static final void a(qw paramqw, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = qp.b(paramArrayOfByte, paramInt1, paramInt2);
      paramqw.a(paramArrayOfByte);
      paramArrayOfByte.rP();
      return;
    }
    catch (IOException paramqw)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramqw);
    }
  }
  
  public static final <T extends qw> T b(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = qo.a(paramArrayOfByte, paramInt1, paramInt2);
      paramT.b(paramArrayOfByte);
      paramArrayOfByte.gP(0);
      return paramT;
    }
    catch (qv paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public static final byte[] f(qw paramqw)
  {
    byte[] arrayOfByte = new byte[paramqw.rZ()];
    a(paramqw, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public void a(qp paramqp) {}
  
  public abstract qw b(qo paramqo);
  
  protected int c()
  {
    return 0;
  }
  
  public int rY()
  {
    if (azh < 0) {
      rZ();
    }
    return azh;
  }
  
  public int rZ()
  {
    int i = c();
    azh = i;
    return i;
  }
  
  public String toString()
  {
    return qx.g(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */