package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

final class ls
{
  final int a;
  final byte[] b;
  
  ls(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramArrayOfByte;
  }
  
  int a()
  {
    return 0 + zzsn.f(a) + b.length;
  }
  
  void a(zzsn paramzzsn)
    throws IOException
  {
    paramzzsn.e(a);
    paramzzsn.d(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ls)) {
        return false;
      }
      paramObject = (ls)paramObject;
    } while ((a == a) && (Arrays.equals(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return (a + 527) * 31 + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */