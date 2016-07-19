package com.google.android.gms.internal;

import java.io.IOException;

public final class la$f
  extends lq
{
  public long[] a;
  public long[] b;
  
  public la$f()
  {
    a();
  }
  
  public f a()
  {
    a = lt.b;
    b = lt.b;
    S = -1;
    return this;
  }
  
  public f a(lk paramlk)
    throws IOException
  {
    for (;;)
    {
      int i = paramlk.a();
      int j;
      long[] arrayOfLong;
      int k;
      switch (i)
      {
      default: 
        if (lt.a(paramlk, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        j = lt.b(paramlk, 8);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfLong, 0, i);
            j = i;
          }
          while (j < arrayOfLong.length - 1)
          {
            arrayOfLong[j] = paramlk.d();
            paramlk.a();
            j += 1;
          }
        }
        arrayOfLong[j] = paramlk.d();
        a = arrayOfLong;
        break;
      case 10: 
        k = paramlk.c(paramlk.k());
        i = paramlk.q();
        j = 0;
        while (paramlk.o() > 0)
        {
          paramlk.d();
          j += 1;
        }
        paramlk.e(i);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfLong, 0, i);
            j = i;
          }
          while (j < arrayOfLong.length)
          {
            arrayOfLong[j] = paramlk.d();
            j += 1;
          }
        }
        a = arrayOfLong;
        paramlk.d(k);
        break;
      case 16: 
        j = lt.b(paramlk, 16);
        if (b == null) {}
        for (i = 0;; i = b.length)
        {
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, arrayOfLong, 0, i);
            j = i;
          }
          while (j < arrayOfLong.length - 1)
          {
            arrayOfLong[j] = paramlk.d();
            paramlk.a();
            j += 1;
          }
        }
        arrayOfLong[j] = paramlk.d();
        b = arrayOfLong;
        break;
      case 18: 
        k = paramlk.c(paramlk.k());
        i = paramlk.q();
        j = 0;
        while (paramlk.o() > 0)
        {
          paramlk.d();
          j += 1;
        }
        paramlk.e(i);
        if (b == null) {}
        for (i = 0;; i = b.length)
        {
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, arrayOfLong, 0, i);
            j = i;
          }
          while (j < arrayOfLong.length)
          {
            arrayOfLong[j] = paramlk.d();
            j += 1;
          }
        }
        b = arrayOfLong;
        paramlk.d(k);
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    int j = 0;
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        paramzzsn.a(1, a[i]);
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        paramzzsn.a(2, b[i]);
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int m = 0;
    int k = super.b();
    int j;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      while (i < a.length)
      {
        j += zzsn.d(a[i]);
        i += 1;
      }
    }
    for (int i = k + j + a.length * 1;; i = k)
    {
      j = i;
      if (b != null)
      {
        j = i;
        if (b.length > 0)
        {
          k = 0;
          j = m;
          while (j < b.length)
          {
            k += zzsn.d(b[j]);
            j += 1;
          }
          j = i + k + b.length * 1;
        }
      }
      return j;
    }
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
      if (!lp.a(a, a)) {
        return false;
      }
    } while (lp.a(b, b));
    return false;
  }
  
  public int hashCode()
  {
    return ((getClass().getName().hashCode() + 527) * 31 + lp.a(a)) * 31 + lp.a(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.la.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */