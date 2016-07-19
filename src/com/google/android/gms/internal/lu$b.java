package com.google.android.gms.internal;

import java.io.IOException;

public final class lu$b
  extends ll<b>
{
  public int a;
  public String b;
  public String c;
  
  public lu$b()
  {
    a();
  }
  
  public b a()
  {
    a = 0;
    b = "";
    c = "";
    m = null;
    S = -1;
    return this;
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
        if (a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        i = paramlk.f();
        switch (i)
        {
        default: 
          break;
        case 0: 
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        case 17: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 22: 
        case 23: 
        case 24: 
        case 25: 
        case 26: 
          a = i;
        }
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 26: 
        c = paramlk.h();
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (a != 0) {
      paramzzsn.a(1, a);
    }
    if (!b.equals("")) {
      paramzzsn.a(2, b);
    }
    if (!c.equals("")) {
      paramzzsn.a(3, c);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != 0) {
      i = j + zzsn.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + zzsn.b(2, b);
    }
    i = j;
    if (!c.equals("")) {
      i = j + zzsn.b(3, c);
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label54:
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof b));
          paramObject = (b)paramObject;
          bool1 = bool2;
        } while (a != a);
        if (b != null) {
          break;
        }
        bool1 = bool2;
      } while (b != null);
      if (c != null) {
        break label124;
      }
      bool1 = bool2;
    } while (c != null);
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
        if (b.equals(b)) {
          break label54;
        }
        return false;
        label124:
        if (!c.equals(c)) {
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
    int i1 = a;
    int i;
    int j;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label101;
      }
      j = 0;
      label39:
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
      return (j + (i + ((n + 527) * 31 + i1) * 31) * 31) * 31 + k;
      i = b.hashCode();
      break;
      j = c.hashCode();
      break label39;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */