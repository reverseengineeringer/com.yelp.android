package com.google.android.gms.internal;

public final class ra$d
  extends qq<d>
{
  private static volatile d[] azI;
  public String fv;
  public String value;
  
  public ra$d()
  {
    se();
  }
  
  public static d[] sd()
  {
    if (azI == null) {}
    synchronized (qu.azg)
    {
      if (azI == null) {
        azI = new d[0];
      }
      return azI;
    }
  }
  
  public d B(qo paramqo)
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
      case 10: 
        fv = paramqo.readString();
        break;
      case 18: 
        value = paramqo.readString();
      }
    }
  }
  
  public void a(qp paramqp)
  {
    if (!fv.equals("")) {
      paramqp.b(1, fv);
    }
    if (!value.equals("")) {
      paramqp.b(2, value);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = super.c();
    int i = j;
    if (!fv.equals("")) {
      i = j + qp.j(1, fv);
    }
    j = i;
    if (!value.equals("")) {
      j = i + qp.j(2, value);
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
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof d));
        paramObject = (d)paramObject;
        if (fv != null) {
          break;
        }
        bool1 = bool2;
      } while (fv != null);
      if (value != null) {
        break label79;
      }
      bool1 = bool2;
    } while (value != null);
    label79:
    while (value.equals(value))
    {
      return a((qq)paramObject);
      if (fv.equals(fv)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (fv == null)
    {
      i = 0;
      if (value != null) {
        break label48;
      }
    }
    for (;;)
    {
      return ((i + 527) * 31 + j) * 31 + rQ();
      i = fv.hashCode();
      break;
      label48:
      j = value.hashCode();
    }
  }
  
  public d se()
  {
    fv = "";
    value = "";
    ayW = null;
    azh = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ra.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */