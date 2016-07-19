package com.google.android.gms.internal;

import java.io.IOException;

public final class lu$a
  extends ll<a>
{
  public String[] a;
  public String[] b;
  public int[] c;
  public long[] d;
  
  public lu$a()
  {
    a();
  }
  
  public a a()
  {
    a = lt.f;
    b = lt.f;
    c = lt.a;
    d = lt.b;
    m = null;
    S = -1;
    return this;
  }
  
  public a a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      int j;
      Object localObject;
      int k;
      switch (i)
      {
      default: 
        if (a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = lt.b(paramlk, 10);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlk.h();
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = paramlk.h();
        a = ((String[])localObject);
        break;
      case 18: 
        j = lt.b(paramlk, 18);
        if (b == null) {}
        for (i = 0;; i = b.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlk.h();
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = paramlk.h();
        b = ((String[])localObject);
        break;
      case 24: 
        j = lt.b(paramlk, 24);
        if (c == null) {}
        for (i = 0;; i = c.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(c, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlk.f();
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = paramlk.f();
        c = ((int[])localObject);
        break;
      case 26: 
        k = paramlk.c(paramlk.k());
        i = paramlk.q();
        j = 0;
        while (paramlk.o() > 0)
        {
          paramlk.f();
          j += 1;
        }
        paramlk.e(i);
        if (c == null) {}
        for (i = 0;; i = c.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(c, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramlk.f();
            j += 1;
          }
        }
        c = ((int[])localObject);
        paramlk.d(k);
        break;
      case 32: 
        j = lt.b(paramlk, 32);
        if (d == null) {}
        for (i = 0;; i = d.length)
        {
          localObject = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(d, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramlk.e();
            paramlk.a();
            j += 1;
          }
        }
        localObject[j] = paramlk.e();
        d = ((long[])localObject);
        break;
      case 34: 
        k = paramlk.c(paramlk.k());
        i = paramlk.q();
        j = 0;
        while (paramlk.o() > 0)
        {
          paramlk.e();
          j += 1;
        }
        paramlk.e(i);
        if (d == null) {}
        for (i = 0;; i = d.length)
        {
          localObject = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(d, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramlk.e();
            j += 1;
          }
        }
        d = ((long[])localObject);
        paramlk.d(k);
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    int j = 0;
    int i;
    String str;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        str = a[i];
        if (str != null) {
          paramzzsn.a(1, str);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        str = b[i];
        if (str != null) {
          paramzzsn.a(2, str);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        paramzzsn.a(3, c[i]);
        i += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        paramzzsn.b(4, d[i]);
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i1 = super.b();
    int j;
    int k;
    String str;
    int n;
    int m;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < a.length; k = m)
      {
        str = a[i];
        n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + zzsn.b(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i1 + j + k * 1;; i = i1)
    {
      j = i;
      if (b != null)
      {
        j = i;
        if (b.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < b.length; m = n)
          {
            str = b[j];
            i1 = k;
            n = m;
            if (str != null)
            {
              n = m + 1;
              i1 = k + zzsn.b(str);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 1;
        }
      }
      i = j;
      if (c != null)
      {
        i = j;
        if (c.length > 0)
        {
          i = 0;
          k = 0;
          while (i < c.length)
          {
            k += zzsn.b(c[i]);
            i += 1;
          }
          i = j + k + c.length * 1;
        }
      }
      j = i;
      if (d != null)
      {
        j = i;
        if (d.length > 0)
        {
          k = 0;
          j = i2;
          while (j < d.length)
          {
            k += zzsn.e(d[j]);
            j += 1;
          }
          j = i + k + d.length * 1;
        }
      }
      return j;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
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
              } while (!(paramObject instanceof a));
              paramObject = (a)paramObject;
              bool1 = bool2;
            } while (!lp.a(a, a));
            bool1 = bool2;
          } while (!lp.a(b, b));
          bool1 = bool2;
        } while (!lp.a(c, c));
        bool1 = bool2;
      } while (!lp.a(d, d));
      if ((m != null) && (!m.b())) {
        break label127;
      }
      if (m == null) {
        break;
      }
      bool1 = bool2;
    } while (!m.b());
    return true;
    label127:
    return m.equals(m);
  }
  
  public int hashCode()
  {
    int j = getClass().getName().hashCode();
    int k = lp.a(a);
    int m = lp.a(b);
    int n = lp.a(c);
    int i1 = lp.a(d);
    if ((this.m == null) || (this.m.b())) {}
    for (int i = 0;; i = this.m.hashCode()) {
      return i + (((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */