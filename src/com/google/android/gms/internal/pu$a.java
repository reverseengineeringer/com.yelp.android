package com.google.android.gms.internal;

public final class pu$a
  extends qq<a>
{
  public long auB;
  public c.j auC;
  public c.f gs;
  
  public pu$a()
  {
    rc();
  }
  
  public static a l(byte[] paramArrayOfByte)
  {
    return (a)qw.a(new a(), paramArrayOfByte);
  }
  
  public void a(qp paramqp)
  {
    paramqp.b(1, auB);
    if (gs != null) {
      paramqp.a(2, gs);
    }
    if (auC != null) {
      paramqp.a(3, auC);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = super.c() + qp.d(1, auB);
    int i = j;
    if (gs != null) {
      i = j + qp.c(2, gs);
    }
    j = i;
    if (auC != null) {
      j = i + qp.c(3, auC);
    }
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof a));
          paramObject = (a)paramObject;
          bool1 = bool2;
        } while (auB != auB);
        if (gs != null) {
          break;
        }
        bool1 = bool2;
      } while (gs != null);
      if (auC != null) {
        break label93;
      }
      bool1 = bool2;
    } while (auC != null);
    label93:
    while (auC.equals(auC))
    {
      return a((qq)paramObject);
      if (gs.equals(gs)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = (int)(auB ^ auB >>> 32);
    int i;
    if (gs == null)
    {
      i = 0;
      if (auC != null) {
        break label67;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + rQ();
      i = gs.hashCode();
      break;
      label67:
      j = auC.hashCode();
    }
  }
  
  public a rc()
  {
    auB = 0L;
    gs = null;
    auC = null;
    ayW = null;
    azh = -1;
    return this;
  }
  
  public a s(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        auB = paramqo.rB();
        break;
      case 18: 
        if (gs == null) {
          gs = new c.f();
        }
        paramqo.a(gs);
        break;
      case 26: 
        if (auC == null) {
          auC = new c.j();
        }
        paramqo.a(auC);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.pu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */