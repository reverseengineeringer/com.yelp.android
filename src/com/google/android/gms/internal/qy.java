package com.google.android.gms.internal;

import java.util.Arrays;

final class qy
{
  final byte[] azi;
  final int tag;
  
  qy(int paramInt, byte[] paramArrayOfByte)
  {
    tag = paramInt;
    azi = paramArrayOfByte;
  }
  
  void a(qp paramqp)
  {
    paramqp.hd(tag);
    paramqp.t(azi);
  }
  
  int c()
  {
    return 0 + qp.he(tag) + azi.length;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof qy)) {
        return false;
      }
      paramObject = (qy)paramObject;
    } while ((tag == tag) && (Arrays.equals(azi, azi)));
    return false;
  }
  
  public int hashCode()
  {
    return (tag + 527) * 31 + Arrays.hashCode(azi);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */