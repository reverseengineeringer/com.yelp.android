package com.google.android.gms.internal;

public final class c$e
  extends qq<e>
{
  private static volatile e[] fD;
  public int key;
  public int value;
  
  public c$e()
  {
    j();
  }
  
  public static e[] i()
  {
    if (fD == null) {}
    synchronized (qu.azg)
    {
      if (fD == null) {
        fD = new e[0];
      }
      return fD;
    }
  }
  
  public void a(qp paramqp)
  {
    paramqp.t(1, key);
    paramqp.t(2, value);
    super.a(paramqp);
  }
  
  protected int c()
  {
    return super.c() + qp.v(1, key) + qp.v(2, value);
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
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof e));
        paramObject = (e)paramObject;
        bool1 = bool2;
      } while (key != key);
      bool1 = bool2;
    } while (value != value);
    return a((qq)paramObject);
  }
  
  public e f(qo paramqo)
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
        key = paramqo.rC();
        break;
      case 16: 
        value = paramqo.rC();
      }
    }
  }
  
  public int hashCode()
  {
    return ((key + 527) * 31 + value) * 31 + rQ();
  }
  
  public e j()
  {
    key = 0;
    value = 0;
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */