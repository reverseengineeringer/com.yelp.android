package com.google.android.gms.internal;

import java.io.IOException;

public final class ky$e
  extends lq
{
  private static volatile e[] d;
  public Integer a;
  public String b;
  public ky.c c;
  
  public ky$e()
  {
    c();
  }
  
  public static e[] a()
  {
    if (d == null) {}
    synchronized (lp.a)
    {
      if (d == null) {
        d = new e[0];
      }
      return d;
    }
  }
  
  public e a(lk paramlk)
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
        if (c == null) {
          c = new ky.c();
        }
        paramlk.a(c);
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
    if (c != null) {
      paramzzsn.a(3, c);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + zzsn.b(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + zzsn.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + zzsn.c(3, c);
    }
    return i;
  }
  
  public e c()
  {
    a = null;
    b = null;
    c = null;
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
        if (!(paramObject instanceof e)) {
          return false;
        }
        paramObject = (e)paramObject;
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
        if (c != null) {
          break;
        }
      } while (c == null);
      return false;
    } while (c.equals(c));
    return false;
  }
  
  public int hashCode()
  {
    int k = 0;
    int m = getClass().getName().hashCode();
    int i;
    int j;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label72;
      }
      j = 0;
      label32:
      if (c != null) {
        break label83;
      }
    }
    for (;;)
    {
      return (j + (i + (m + 527) * 31) * 31) * 31 + k;
      i = a.hashCode();
      break;
      label72:
      j = b.hashCode();
      break label32;
      label83:
      k = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */