package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;

public final class jg$a
{
  public final int a;
  public final int b;
  
  public jg$a(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!(paramObject instanceof a)) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (this == paramObject);
      paramObject = (a)paramObject;
      if (a != a) {
        break;
      }
      bool1 = bool2;
    } while (b == b);
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(a), Integer.valueOf(b) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */