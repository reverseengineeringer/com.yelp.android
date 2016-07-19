package com.google.android.gms.internal;

import java.io.IOException;

public final class ky$b
  extends lq
{
  private static volatile b[] f;
  public Integer a;
  public String b;
  public ky.c[] c;
  public Boolean d;
  public ky.d e;
  
  public ky$b()
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
      case 8: 
        a = Integer.valueOf(paramlk.f());
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 26: 
        int j = lt.b(paramlk, 26);
        if (c == null) {}
        ky.c[] arrayOfc;
        for (i = 0;; i = c.length)
        {
          arrayOfc = new ky.c[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(c, 0, arrayOfc, 0, i);
            j = i;
          }
          while (j < arrayOfc.length - 1)
          {
            arrayOfc[j] = new ky.c();
            paramlk.a(arrayOfc[j]);
            paramlk.a();
            j += 1;
          }
        }
        arrayOfc[j] = new ky.c();
        paramlk.a(arrayOfc[j]);
        c = arrayOfc;
        break;
      case 32: 
        d = Boolean.valueOf(paramlk.g());
        break;
      case 42: 
        if (e == null) {
          e = new ky.d();
        }
        paramlk.a(e);
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (a != null) {
      paramzzsn.a(1, a.intValue());
    }
    if (b != null) {
      paramzzsn.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        ky.c localc = c[i];
        if (localc != null) {
          paramzzsn.a(3, localc);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramzzsn.a(4, d.booleanValue());
    }
    if (e != null) {
      paramzzsn.a(5, e);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + zzsn.b(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + zzsn.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          ky.c localc = c[j];
          int k = i;
          if (localc != null) {
            k = i + zzsn.c(3, localc);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null) {
      i = j + zzsn.b(4, d.booleanValue());
    }
    j = i;
    if (e != null) {
      j = i + zzsn.c(5, e);
    }
    return j;
  }
  
  public b c()
  {
    a = null;
    b = null;
    c = ky.c.a();
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
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
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
        if (!lp.a(c, c)) {
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
    int i;
    int j;
    label33:
    int i1;
    int k;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label103;
      }
      j = 0;
      i1 = lp.a(c);
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
      return (k + ((j + (i + (n + 527) * 31) * 31) * 31 + i1) * 31) * 31 + m;
      i = a.hashCode();
      break;
      label103:
      j = b.hashCode();
      break label33;
      label114:
      k = d.hashCode();
      break label51;
      label125:
      m = e.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */