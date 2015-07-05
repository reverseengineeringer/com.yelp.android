package com.google.android.gms.internal;

public final class ra$b
  extends qq<b>
{
  public int azu;
  public String azv;
  public String version;
  
  public ra$b()
  {
    sb();
  }
  
  public void a(qp paramqp)
  {
    if (azu != 0) {
      paramqp.t(1, azu);
    }
    if (!azv.equals("")) {
      paramqp.b(2, azv);
    }
    if (!version.equals("")) {
      paramqp.b(3, version);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = super.c();
    int i = j;
    if (azu != 0) {
      i = j + qp.v(1, azu);
    }
    j = i;
    if (!azv.equals("")) {
      j = i + qp.j(2, azv);
    }
    i = j;
    if (!version.equals("")) {
      i = j + qp.j(3, version);
    }
    return i;
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
          } while (!(paramObject instanceof b));
          paramObject = (b)paramObject;
          bool1 = bool2;
        } while (azu != azu);
        if (azv != null) {
          break;
        }
        bool1 = bool2;
      } while (azv != null);
      if (version != null) {
        break label92;
      }
      bool1 = bool2;
    } while (version != null);
    label92:
    while (version.equals(version))
    {
      return a((qq)paramObject);
      if (azv.equals(azv)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = azu;
    int i;
    if (azv == null)
    {
      i = 0;
      if (version != null) {
        break label58;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + rQ();
      i = azv.hashCode();
      break;
      label58:
      j = version.hashCode();
    }
  }
  
  public b sb()
  {
    azu = 0;
    azv = "";
    version = "";
    ayW = null;
    azh = -1;
    return this;
  }
  
  public b z(qo paramqo)
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
        i = paramqo.rC();
        switch (i)
        {
        default: 
          break;
        case 0: 
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        case 17: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 22: 
          azu = i;
        }
        break;
      case 18: 
        azv = paramqo.readString();
        break;
      case 26: 
        version = paramqo.readString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ra.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */