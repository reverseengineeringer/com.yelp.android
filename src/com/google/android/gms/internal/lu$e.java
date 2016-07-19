package com.google.android.gms.internal;

import java.io.IOException;

public final class lu$e
  extends ll<e>
{
  private static volatile e[] c;
  public String a;
  public String b;
  
  public lu$e()
  {
    c();
  }
  
  public static e[] a()
  {
    if (c == null) {}
    synchronized (lp.a)
    {
      if (c == null) {
        c = new e[0];
      }
      return c;
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
        if (a(paramlk, i)) {}
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
    if (!a.equals("")) {
      paramzzsn.a(1, a);
    }
    if (!b.equals("")) {
      paramzzsn.a(2, b);
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
    return j;
  }
  
  public e c()
  {
    a = "";
    b = "";
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
        } while (!(paramObject instanceof e));
        paramObject = (e)paramObject;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (a != null);
      if (b != null) {
        break label111;
      }
      bool1 = bool2;
    } while (b != null);
    for (;;)
    {
      if ((m == null) || (m.b()))
      {
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
        label111:
        if (!b.equals(b)) {
          return false;
        }
      }
    }
    return m.equals(m);
  }
  
  public int hashCode()
  {
    int m = 0;
    int n = getClass().getName().hashCode();
    int i;
    int j;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label89;
      }
      j = 0;
      label33:
      k = m;
      if (this.m != null) {
        if (!this.m.b()) {
          break label100;
        }
      }
    }
    label89:
    label100:
    for (int k = m;; k = this.m.hashCode())
    {
      return (j + (i + (n + 527) * 31) * 31) * 31 + k;
      i = a.hashCode();
      break;
      j = b.hashCode();
      break label33;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */