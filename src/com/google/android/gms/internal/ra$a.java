package com.google.android.gms.internal;

public final class ra$a
  extends qq<a>
{
  public String[] azr;
  public String[] azs;
  public int[] azt;
  
  public ra$a()
  {
    sa();
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    int i;
    String str;
    if ((azr != null) && (azr.length > 0))
    {
      i = 0;
      while (i < azr.length)
      {
        str = azr[i];
        if (str != null) {
          paramqp.b(1, str);
        }
        i += 1;
      }
    }
    if ((azs != null) && (azs.length > 0))
    {
      i = 0;
      while (i < azs.length)
      {
        str = azs[i];
        if (str != null) {
          paramqp.b(2, str);
        }
        i += 1;
      }
    }
    if ((azt != null) && (azt.length > 0))
    {
      i = j;
      while (i < azt.length)
      {
        paramqp.t(3, azt[i]);
        i += 1;
      }
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int i2 = 0;
    int i1 = super.c();
    int j;
    int k;
    String str;
    int n;
    int m;
    if ((azr != null) && (azr.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < azr.length; k = m)
      {
        str = azr[i];
        n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + qp.dk(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i1 + j + k * 1;; i = i1)
    {
      j = i;
      if (azs != null)
      {
        j = i;
        if (azs.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < azs.length; m = n)
          {
            str = azs[j];
            i1 = k;
            n = m;
            if (str != null)
            {
              n = m + 1;
              i1 = k + qp.dk(str);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 1;
        }
      }
      i = j;
      if (azt != null)
      {
        i = j;
        if (azt.length > 0)
        {
          k = 0;
          i = i2;
          while (i < azt.length)
          {
            k += qp.gZ(azt[i]);
            i += 1;
          }
          i = j + k + azt.length * 1;
        }
      }
      return i;
    }
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
        } while (!qu.equals(azr, azr));
        bool1 = bool2;
      } while (!qu.equals(azs, azs));
      bool1 = bool2;
    } while (!qu.equals(azt, azt));
    return a((qq)paramObject);
  }
  
  public int hashCode()
  {
    return (((qu.hashCode(azr) + 527) * 31 + qu.hashCode(azs)) * 31 + qu.hashCode(azt)) * 31 + rQ();
  }
  
  public a sa()
  {
    azr = qz.azo;
    azs = qz.azo;
    azt = qz.azj;
    ayW = null;
    azh = -1;
    return this;
  }
  
  public a y(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = qz.b(paramqo, 10);
        if (azr == null) {}
        for (i = 0;; i = azr.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(azr, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.readString();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.readString();
        azr = ((String[])localObject);
        break;
      case 18: 
        j = qz.b(paramqo, 18);
        if (azs == null) {}
        for (i = 0;; i = azs.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(azs, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.readString();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.readString();
        azs = ((String[])localObject);
        break;
      case 24: 
        j = qz.b(paramqo, 24);
        if (azt == null) {}
        for (i = 0;; i = azt.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(azt, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = paramqo.rC();
        azt = ((int[])localObject);
        break;
      case 26: 
        int k = paramqo.gS(paramqo.rG());
        i = paramqo.getPosition();
        j = 0;
        while (paramqo.rL() > 0)
        {
          paramqo.rC();
          j += 1;
        }
        paramqo.gU(i);
        if (azt == null) {}
        for (i = 0;; i = azt.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(azt, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramqo.rC();
            j += 1;
          }
        }
        azt = ((int[])localObject);
        paramqo.gT(k);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ra.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */