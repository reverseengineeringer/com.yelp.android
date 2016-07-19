package com.google.android.gms.internal;

import java.io.IOException;

public final class kz$c
  extends lq
{
  private static volatile c[] c;
  public String a;
  public String b;
  
  public kz$c()
  {
    c();
  }
  
  public static c[] a()
  {
    if (c == null) {}
    synchronized (lp.a)
    {
      if (c == null) {
        c = new c[0];
      }
      return c;
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
    return j;
  }
  
  public c c()
  {
    a = null;
    b = null;
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
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = getClass().getName().hashCode();
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label56;
      }
    }
    for (;;)
    {
      return (i + (k + 527) * 31) * 31 + j;
      i = a.hashCode();
      break;
      label56:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kz.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */