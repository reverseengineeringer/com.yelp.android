package com.google.android.gms.internal;

public final class jc$a
{
  public final int Mt;
  public final int Mu;
  
  public jc$a(int paramInt1, int paramInt2)
  {
    Mt = paramInt1;
    Mu = paramInt2;
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
      if (Mt != Mt) {
        break;
      }
      bool1 = bool2;
    } while (Mu == Mu);
    return false;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { Integer.valueOf(Mt), Integer.valueOf(Mu) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */