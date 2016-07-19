package com.google.android.gms.internal;

import java.io.IOException;

public final class ky$f
  extends lq
{
  public Integer a;
  public String b;
  public Boolean c;
  public String[] d;
  
  public ky$f()
  {
    a();
  }
  
  public f a()
  {
    a = null;
    b = null;
    c = null;
    d = lt.f;
    S = -1;
    return this;
  }
  
  public f a(lk paramlk)
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
          a = Integer.valueOf(i);
        }
        break;
      case 18: 
        b = paramlk.h();
        break;
      case 24: 
        c = Boolean.valueOf(paramlk.g());
        break;
      case 34: 
        int j = lt.b(paramlk, 34);
        if (d == null) {}
        String[] arrayOfString;
        for (i = 0;; i = d.length)
        {
          arrayOfString = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(d, 0, arrayOfString, 0, i);
            j = i;
          }
          while (j < arrayOfString.length - 1)
          {
            arrayOfString[j] = paramlk.h();
            paramlk.a();
            j += 1;
          }
        }
        arrayOfString[j] = paramlk.h();
        d = arrayOfString;
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
      paramzzsn.a(3, c.booleanValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        String str = d[i];
        if (str != null) {
          paramzzsn.a(4, str);
        }
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int n = 0;
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
      i = j + zzsn.b(3, c.booleanValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < d.length)
        {
          String str = d[j];
          int i1 = k;
          n = m;
          if (str != null)
          {
            n = m + 1;
            i1 = k + zzsn.b(str);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof f)) {
        return false;
      }
      paramObject = (f)paramObject;
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
    } while (lp.a(d, d));
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
        break label83;
      }
      j = 0;
      label32:
      if (c != null) {
        break label94;
      }
    }
    for (;;)
    {
      return ((j + (i + (m + 527) * 31) * 31) * 31 + k) * 31 + lp.a(d);
      i = a.intValue();
      break;
      label83:
      j = b.hashCode();
      break label32;
      label94:
      k = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ky.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */