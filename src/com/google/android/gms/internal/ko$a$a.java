package com.google.android.gms.internal;

import java.io.IOException;

public final class ko$a$a
  extends ll<a>
{
  private static volatile a[] d;
  public String a;
  public String b;
  public int c;
  
  public ko$a$a()
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
      switch (i)
      {
      default: 
        if (a(paramlk, i)) {}
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
        c = paramlk.f();
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (!a.equals("")) {
      paramzzsn.a(1, a);
    }
    if (!b.equals("")) {
      paramzzsn.a(2, b);
    }
    if (c != 0) {
      paramzzsn.a(3, c);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + zzsn.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + zzsn.b(2, b);
    }
    i = j;
    if (c != 0) {
      i = j + zzsn.b(3, c);
    }
    return i;
  }
  
  public a c()
  {
    a = "";
    b = "";
    c = 0;
    m = null;
    S = -1;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label41:
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof a));
        paramObject = (a)paramObject;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (a != null);
      if (b != null) {
        break label124;
      }
      bool1 = bool2;
    } while (b != null);
    label124:
    while (b.equals(b))
    {
      bool1 = bool2;
      if (c != c) {
        break;
      }
      if ((m != null) && (!m.b())) {
        break label140;
      }
      if (m != null)
      {
        bool1 = bool2;
        if (!m.b()) {
          break;
        }
      }
      return true;
      if (a.equals(a)) {
        break label41;
      }
      return false;
    }
    return false;
    label140:
    return m.equals(m);
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = getClass().getName().hashCode();
    int i;
    int j;
    label33:
    int i1;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label101;
      }
      j = 0;
      i1 = c;
      k = m;
      if (this.m != null) {
        if (!this.m.b()) {
          break label112;
        }
      }
    }
    label101:
    label112:
    for (int k = m;; k = this.m.hashCode())
    {
      return ((j + (i + (n + 527) * 31) * 31) * 31 + i1) * 31 + k;
      i = a.hashCode();
      break;
      j = b.hashCode();
      break label33;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ko.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */