package com.google.android.gms.internal;

public final class c$d
  extends qq<d>
{
  public d.a[] fA;
  public d.a[] fB;
  public c.c[] fC;
  
  public c$d()
  {
    h();
  }
  
  public void a(qp paramqp)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((fA != null) && (fA.length > 0))
    {
      i = 0;
      while (i < fA.length)
      {
        localObject = fA[i];
        if (localObject != null) {
          paramqp.a(1, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fB != null) && (fB.length > 0))
    {
      i = 0;
      while (i < fB.length)
      {
        localObject = fB[i];
        if (localObject != null) {
          paramqp.a(2, (qw)localObject);
        }
        i += 1;
      }
    }
    if ((fC != null) && (fC.length > 0))
    {
      i = j;
      while (i < fC.length)
      {
        localObject = fC[i];
        if (localObject != null) {
          paramqp.a(3, (qw)localObject);
        }
        i += 1;
      }
    }
    super.a(paramqp);
  }
  
  protected int c()
  {
    int m = 0;
    int i = super.c();
    int j = i;
    Object localObject;
    if (fA != null)
    {
      j = i;
      if (fA.length > 0)
      {
        j = 0;
        while (j < fA.length)
        {
          localObject = fA[j];
          k = i;
          if (localObject != null) {
            k = i + qp.c(1, (qw)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (fB != null)
    {
      i = j;
      if (fB.length > 0)
      {
        i = j;
        j = 0;
        while (j < fB.length)
        {
          localObject = fB[j];
          k = i;
          if (localObject != null) {
            k = i + qp.c(2, (qw)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (fC != null)
    {
      k = i;
      if (fC.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= fC.length) {
            break;
          }
          localObject = fC[j];
          k = i;
          if (localObject != null) {
            k = i + qp.c(3, (qw)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public d e(qo paramqo)
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
        if (fA == null) {}
        for (i = 0;; i = fA.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fA, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new d.a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new d.a();
        paramqo.a(localObject[j]);
        fA = ((d.a[])localObject);
        break;
      case 18: 
        j = qz.b(paramqo, 18);
        if (fB == null) {}
        for (i = 0;; i = fB.length)
        {
          localObject = new d.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fB, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new d.a();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new d.a();
        paramqo.a(localObject[j]);
        fB = ((d.a[])localObject);
        break;
      case 26: 
        j = qz.b(paramqo, 26);
        if (fC == null) {}
        for (i = 0;; i = fC.length)
        {
          localObject = new c.c[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(fC, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new c.c();
            paramqo.a(localObject[j]);
            paramqo.rz();
            j += 1;
          }
        }
        localObject[j] = new c.c();
        paramqo.a(localObject[j]);
        fC = ((c.c[])localObject);
      }
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
          } while (!(paramObject instanceof d));
          paramObject = (d)paramObject;
          bool1 = bool2;
        } while (!qu.equals(fA, fA));
        bool1 = bool2;
      } while (!qu.equals(fB, fB));
      bool1 = bool2;
    } while (!qu.equals(fC, fC));
    return a((qq)paramObject);
  }
  
  public d h()
  {
    fA = d.a.r();
    fB = d.a.r();
    fC = c.c.f();
    ayW = null;
    azh = -1;
    return this;
  }
  
  public int hashCode()
  {
    return (((qu.hashCode(fA) + 527) * 31 + qu.hashCode(fB)) * 31 + qu.hashCode(fC)) * 31 + rQ();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */