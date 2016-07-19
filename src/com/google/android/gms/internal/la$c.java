package com.google.android.gms.internal;

import java.io.IOException;

public final class la$c
  extends lq
{
  private static volatile c[] e;
  public String a;
  public String b;
  public Long c;
  public Float d;
  
  public la$c()
  {
    c();
  }
  
  public static c[] a()
  {
    if (e == null) {}
    synchronized (lp.a)
    {
      if (e == null) {
        e = new c[0];
      }
      return e;
    }
  }
  
  public c a(lk paramlk)
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
        a = paramlk.h();
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 24: 
        c = Long.valueOf(paramlk.e());
        break;
      case 37: 
        d = Float.valueOf(paramlk.c());
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (a != null) {
      paramzzsn.a(1, a);
    }
    if (b != null) {
      paramzzsn.a(2, b);
    }
    if (c != null) {
      paramzzsn.b(3, c.longValue());
    }
    if (d != null) {
      paramzzsn.a(4, d.floatValue());
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + zzsn.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + zzsn.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + zzsn.d(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + zzsn.b(4, d.floatValue());
    }
    return j;
  }
  
  public c c()
  {
    a = null;
    b = null;
    c = null;
    d = null;
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
        if (!(paramObject instanceof c)) {
          return false;
        }
        paramObject = (c)paramObject;
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
        if (d != null) {
          break;
        }
      } while (d == null);
      return false;
    } while (d.equals(d));
    return false;
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int k;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label88;
      }
      j = 0;
      if (c != null) {
        break label99;
      }
      k = 0;
      label42:
      if (d != null) {
        break label110;
      }
    }
    for (;;)
    {
      return (k + (j + (i + (n + 527) * 31) * 31) * 31) * 31 + m;
      i = a.hashCode();
      break;
      label88:
      j = b.hashCode();
      break label33;
      label99:
      k = c.hashCode();
      break label42;
      label110:
      m = d.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.la.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */