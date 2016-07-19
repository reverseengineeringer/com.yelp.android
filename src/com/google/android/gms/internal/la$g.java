package com.google.android.gms.internal;

import java.io.IOException;

public final class la$g
  extends lq
{
  private static volatile g[] f;
  public Long a;
  public String b;
  public String c;
  public Long d;
  public Float e;
  
  public la$g()
  {
    c();
  }
  
  public static g[] a()
  {
    if (f == null) {}
    synchronized (lp.a)
    {
      if (f == null) {
        f = new g[0];
      }
      return f;
    }
  }
  
  public g a(lk paramlk)
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
        a = Long.valueOf(paramlk.e());
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 26: 
        c = paramlk.h();
        break;
      case 32: 
        d = Long.valueOf(paramlk.e());
        break;
      case 45: 
        e = Float.valueOf(paramlk.c());
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (a != null) {
      paramzzsn.b(1, a.longValue());
    }
    if (b != null) {
      paramzzsn.a(2, b);
    }
    if (c != null) {
      paramzzsn.a(3, c);
    }
    if (d != null) {
      paramzzsn.b(4, d.longValue());
    }
    if (e != null) {
      paramzzsn.a(5, e.floatValue());
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + zzsn.d(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + zzsn.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + zzsn.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + zzsn.d(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + zzsn.b(5, e.floatValue());
    }
    return i;
  }
  
  public g c()
  {
    a = null;
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
        if (!(paramObject instanceof g)) {
          return false;
        }
        paramObject = (g)paramObject;
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
    int n = 0;
    int i1 = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    label42:
    int m;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label104;
      }
      j = 0;
      if (c != null) {
        break label115;
      }
      k = 0;
      if (d != null) {
        break label126;
      }
      m = 0;
      label52:
      if (e != null) {
        break label138;
      }
    }
    for (;;)
    {
      return (m + (k + (j + (i + (i1 + 527) * 31) * 31) * 31) * 31) * 31 + n;
      i = a.hashCode();
      break;
      label104:
      j = b.hashCode();
      break label33;
      label115:
      k = c.hashCode();
      break label42;
      label126:
      m = d.hashCode();
      break label52;
      label138:
      n = e.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.la.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */