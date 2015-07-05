package com.google.android.gms.internal;

public final class c$b
  extends qq<b>
{
  private static volatile b[] fp;
  public int[] fq;
  public int fr;
  public boolean fs;
  public boolean ft;
  public int name;
  
  public c$b()
  {
    e();
  }
  
  public static b[] d()
  {
    if (fp == null) {}
    synchronized (qu.azg)
    {
      if (fp == null) {
        fp = new b[0];
      }
      return fp;
    }
  }
  
  public void a(qp paramqp)
  {
    if (ft) {
      paramqp.b(1, ft);
    }
    paramqp.t(2, fr);
    if ((fq != null) && (fq.length > 0))
    {
      int i = 0;
      while (i < fq.length)
      {
        paramqp.t(3, fq[i]);
        i += 1;
      }
    }
    if (name != 0) {
      paramqp.t(4, name);
    }
    if (fs) {
      paramqp.b(6, fs);
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int j = 0;
    int k = super.c();
    int i = k;
    if (ft) {
      i = k + qp.c(1, ft);
    }
    k = qp.v(2, fr) + i;
    if ((fq != null) && (fq.length > 0))
    {
      i = 0;
      while (i < fq.length)
      {
        j += qp.gZ(fq[i]);
        i += 1;
      }
    }
    for (j = k + j + fq.length * 1;; j = k)
    {
      i = j;
      if (name != 0) {
        i = j + qp.v(4, name);
      }
      j = i;
      if (fs) {
        j = i + qp.c(6, fs);
      }
      return j;
    }
  }
  
  public b c(qo paramqo)
  {
    for (;;)
    {
      int i = paramqo.rz();
      int j;
      int[] arrayOfInt;
      switch (i)
      {
      default: 
        if (a(paramqo, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        ft = paramqo.rD();
        break;
      case 16: 
        fr = paramqo.rC();
        break;
      case 24: 
        j = qz.b(paramqo, 24);
        if (fq == null) {}
        for (i = 0;; i = fq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fq, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramqo.rC();
            paramqo.rz();
            j += 1;
          }
        }
        arrayOfInt[j] = paramqo.rC();
        fq = arrayOfInt;
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
        if (fq == null) {}
        for (i = 0;; i = fq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fq, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramqo.rC();
            j += 1;
          }
        }
        fq = arrayOfInt;
        paramqo.gT(k);
        break;
      case 32: 
        name = paramqo.rC();
        break;
      case 48: 
        fs = paramqo.rD();
      }
    }
  }
  
  public b e()
  {
    fq = qz.azj;
    fr = 0;
    name = 0;
    fs = false;
    ft = false;
    ayW = null;
    azh = -1;
    return this;
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
            do
            {
              do
              {
                return bool1;
                bool1 = bool2;
              } while (!(paramObject instanceof b));
              paramObject = (b)paramObject;
              bool1 = bool2;
            } while (!qu.equals(fq, fq));
            bool1 = bool2;
          } while (fr != fr);
          bool1 = bool2;
        } while (name != name);
        bool1 = bool2;
      } while (fs != fs);
      bool1 = bool2;
    } while (ft != ft);
    return a((qq)paramObject);
  }
  
  public int hashCode()
  {
    int j = 1231;
    int k = qu.hashCode(fq);
    int m = fr;
    int n = name;
    int i;
    if (fs)
    {
      i = 1231;
      if (!ft) {
        break label85;
      }
    }
    for (;;)
    {
      return ((i + (((k + 527) * 31 + m) * 31 + n) * 31) * 31 + j) * 31 + rQ();
      i = 1237;
      break;
      label85:
      j = 1237;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */