package com.google.android.gms.internal;

import java.io.IOException;

public final class ky$c
  extends lq
{
  private static volatile c[] e;
  public ky.f a;
  public ky.d b;
  public Boolean c;
  public String d;
  
  public ky$c()
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
        if (a == null) {
          a = new ky.f();
        }
        paramlk.a(a);
        break;
      case 18: 
        if (b == null) {
          b = new ky.d();
        }
        paramlk.a(b);
        break;
      case 24: 
        c = Boolean.valueOf(paramlk.g());
        break;
      case 34: 
        d = paramlk.h();
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
      paramzzsn.a(3, c.booleanValue());
    }
    if (d != null) {
      paramzzsn.a(4, d);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + zzsn.c(1, a);
    }
    j = i;
    if (b != null) {
      j = i + zzsn.c(2, b);
    }
    i = j;
    if (c != null) {
      i = j + zzsn.b(3, c.booleanValue());
    }
    j = i;
    if (d != null) {
      j = i + zzsn.b(4, d);
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
 * Qualified Name:     com.google.android.gms.internal.ky.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */