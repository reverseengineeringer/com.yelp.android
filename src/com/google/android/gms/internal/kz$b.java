package com.google.android.gms.internal;

import java.io.IOException;

public final class kz$b
  extends lq
{
  public Long a;
  public String b;
  public Integer c;
  public kz.c[] d;
  public kz.a[] e;
  public ky.a[] f;
  
  public kz$b()
  {
    a();
  }
  
  public b a()
  {
    a = null;
    b = null;
    c = null;
    d = kz.c.a();
    e = kz.a.a();
    f = ky.a.a();
    S = -1;
    return this;
  }
  
  public b a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      int j;
      Object localObject;
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
      case 24: 
        c = Integer.valueOf(paramlk.f());
        break;
      case 34: 
        j = lt.b(paramlk, 34);
        if (d == null) {}
        for (i = 0;; i = d.length)
        {
          localObject = new kz.c[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(d, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new kz.c();
            paramlk.a(localObject[j]);
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = new kz.c();
        paramlk.a(localObject[j]);
        d = ((kz.c[])localObject);
        break;
      case 42: 
        j = lt.b(paramlk, 42);
        if (e == null) {}
        for (i = 0;; i = e.length)
        {
          localObject = new kz.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(e, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new kz.a();
            paramlk.a(localObject[j]);
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = new kz.a();
        paramlk.a(localObject[j]);
        e = ((kz.a[])localObject);
        break;
      case 50: 
        j = lt.b(paramlk, 50);
        if (f == null) {}
        for (i = 0;; i = f.length)
        {
          localObject = new ky.a[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(f, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new ky.a();
            paramlk.a(localObject[j]);
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = new ky.a();
        paramlk.a(localObject[j]);
        f = ((ky.a[])localObject);
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    int j = 0;
    if (a != null) {
      paramzzsn.b(1, a.longValue());
    }
    if (b != null) {
      paramzzsn.a(2, b);
    }
    if (c != null) {
      paramzzsn.a(3, c.intValue());
    }
    int i;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localObject = d[i];
        if (localObject != null) {
          paramzzsn.a(4, (lq)localObject);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = 0;
      while (i < e.length)
      {
        localObject = e[i];
        if (localObject != null) {
          paramzzsn.a(5, (lq)localObject);
        }
        i += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i = j;
      while (i < f.length)
      {
        localObject = f[i];
        if (localObject != null) {
          paramzzsn.a(6, (lq)localObject);
        }
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int m = 0;
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
      i = j + zzsn.b(3, c.intValue());
    }
    j = i;
    Object localObject;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        while (j < d.length)
        {
          localObject = d[j];
          k = i;
          if (localObject != null) {
            k = i + zzsn.c(4, (lq)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null)
    {
      i = j;
      if (e.length > 0)
      {
        i = j;
        j = 0;
        while (j < e.length)
        {
          localObject = e[j];
          k = i;
          if (localObject != null) {
            k = i + zzsn.c(5, (lq)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (f != null)
    {
      k = i;
      if (f.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= f.length) {
            break;
          }
          localObject = f[j];
          k = i;
          if (localObject != null) {
            k = i + zzsn.c(6, (lq)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
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
      if (c == null)
      {
        if (c != null) {
          return false;
        }
      }
      else if (!c.equals(c)) {
        return false;
      }
      if (!lp.a(d, d)) {
        return false;
      }
      if (!lp.a(e, e)) {
        return false;
      }
    } while (lp.a(f, f));
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
        break label105;
      }
      j = 0;
      label32:
      if (c != null) {
        break label116;
      }
    }
    for (;;)
    {
      return ((((j + (i + (m + 527) * 31) * 31) * 31 + k) * 31 + lp.a(d)) * 31 + lp.a(e)) * 31 + lp.a(f);
      i = a.hashCode();
      break;
      label105:
      j = b.hashCode();
      break label32;
      label116:
      k = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */