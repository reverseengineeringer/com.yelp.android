package com.google.android.gms.internal;

import java.io.IOException;

public final class ky$a
  extends lq
{
  private static volatile a[] d;
  public Integer a;
  public ky.e[] b;
  public ky.b[] c;
  
  public ky$a()
  {
    c();
  }
  
  public static a[] a()
  {
    if (d == null) {}
    synchronized (lp.a)
    {
      if (d == null) {
        d = new a[0];
      }
      return d;
    }
  }
  
  public a a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (lt.a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        a = Integer.valueOf(paramlk.f());
        break;
      case 18: 
        j = lt.b(paramlk, 18);
        if (b == null) {}
        for (i = 0;; i = b.length)
        {
          localObject = new ky.e[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new ky.e();
            paramlk.a(localObject[j]);
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = new ky.e();
        paramlk.a(localObject[j]);
        b = ((ky.e[])localObject);
        break;
      case 26: 
        j = lt.b(paramlk, 26);
        if (c == null) {}
        for (i = 0;; i = c.length)
        {
          localObject = new ky.b[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(c, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new ky.b();
            paramlk.a(localObject[j]);
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = new ky.b();
        paramlk.a(localObject[j]);
        c = ((ky.b[])localObject);
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    int j = 0;
    if (a != null) {
      paramzzsn.a(1, a.intValue());
    }
    int i;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramzzsn.a(2, (lq)localObject);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramzzsn.a(3, (lq)localObject);
        }
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + zzsn.b(1, a.intValue());
    }
    i = j;
    Object localObject;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        i = j;
        j = 0;
        while (j < b.length)
        {
          localObject = b[j];
          k = i;
          if (localObject != null) {
            k = i + zzsn.c(2, (lq)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (c != null)
    {
      k = i;
      if (c.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= c.length) {
            break;
          }
          localObject = c[j];
          k = i;
          if (localObject != null) {
            k = i + zzsn.c(3, (lq)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public a c()
  {
    a = null;
    b = ky.e.a();
    c = ky.b.a();
    S = -1;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
      if (a == null)
      {
        if (a != null) {
          return false;
        }
      }
      else if (!a.equals(a)) {
        return false;
      }
      if (!lp.a(b, b)) {
        return false;
      }
    } while (lp.a(c, c));
    return false;
  }
  
  public int hashCode()
  {
    int j = getClass().getName().hashCode();
    if (a == null) {}
    for (int i = 0;; i = a.hashCode()) {
      return ((i + (j + 527) * 31) * 31 + lp.a(b)) * 31 + lp.a(c);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */