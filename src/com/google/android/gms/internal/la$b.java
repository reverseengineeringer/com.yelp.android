package com.google.android.gms.internal;

import java.io.IOException;

public final class la$b
  extends lq
{
  private static volatile b[] f;
  public la.c[] a;
  public String b;
  public Long c;
  public Long d;
  public Integer e;
  
  public la$b()
  {
    c();
  }
  
  public static b[] a()
  {
    if (f == null) {}
    synchronized (lp.a)
    {
      if (f == null) {
        f = new b[0];
      }
      return f;
    }
  }
  
  public b a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      switch (i)
      {
      default: 
        if (lt.a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        int j = lt.b(paramlk, 10);
        if (a == null) {}
        la.c[] arrayOfc;
        for (i = 0;; i = a.length)
        {
          arrayOfc = new la.c[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfc, 0, i);
            j = i;
          }
          while (j < arrayOfc.length - 1)
          {
            arrayOfc[j] = new la.c();
            paramlk.a(arrayOfc[j]);
            paramlk.a();
            j += 1;
          }
        }
        arrayOfc[j] = new la.c();
        paramlk.a(arrayOfc[j]);
        a = arrayOfc;
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 24: 
        c = Long.valueOf(paramlk.e());
        break;
      case 32: 
        d = Long.valueOf(paramlk.e());
        break;
      case 40: 
        e = Integer.valueOf(paramlk.f());
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        la.c localc = a[i];
        if (localc != null) {
          paramzzsn.a(1, localc);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramzzsn.a(2, b);
    }
    if (c != null) {
      paramzzsn.b(3, c.longValue());
    }
    if (d != null) {
      paramzzsn.b(4, d.longValue());
    }
    if (e != null) {
      paramzzsn.a(5, e.intValue());
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          la.c localc = a[k];
          j = i;
          if (localc != null) {
            j = i + zzsn.c(1, localc);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + zzsn.b(2, b);
    }
    j = i;
    if (c != null) {
      j = i + zzsn.d(3, c.longValue());
    }
    i = j;
    if (d != null) {
      i = j + zzsn.d(4, d.longValue());
    }
    j = i;
    if (e != null) {
      j = i + zzsn.b(5, e.intValue());
    }
    return j;
  }
  
  public b c()
  {
    a = la.c.a();
    b = null;
    c = null;
    d = null;
    e = null;
    S = -1;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof b)) {
          return false;
        }
        paramObject = (b)paramObject;
        if (!lp.a(a, a)) {
          return false;
        }
        if (b == null)
        {
          if (b != null) {
            return false;
          }
        }
        else if (!b.equals(b)) {
          return false;
        }
        if (c == null)
        {
          if (c != null) {
            return false;
          }
        }
        else if (!c.equals(c)) {
          return false;
        }
        if (d == null)
        {
          if (d != null) {
            return false;
          }
        }
        else if (!d.equals(d)) {
          return false;
        }
        if (e != null) {
          break;
        }
      } while (e == null);
      return false;
    } while (e.equals(e));
    return false;
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = getClass().getName().hashCode();
    int i1 = lp.a(a);
    int i;
    int j;
    label42:
    int k;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label103;
      }
      j = 0;
      if (d != null) {
        break label114;
      }
      k = 0;
      label51:
      if (e != null) {
        break label125;
      }
    }
    for (;;)
    {
      return (k + (j + (i + ((n + 527) * 31 + i1) * 31) * 31) * 31) * 31 + m;
      i = b.hashCode();
      break;
      label103:
      j = c.hashCode();
      break label42;
      label114:
      k = d.hashCode();
      break label51;
      label125:
      m = e.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.la.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */