package com.google.android.gms.internal;

import java.io.IOException;

public final class la$d
  extends lq
{
  public la.e[] a;
  
  public la$d()
  {
    a();
  }
  
  public d a()
  {
    a = la.e.a();
    S = -1;
    return this;
  }
  
  public d a(lk paramlk)
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
        int j = lt.b(paramlk, 10);
        if (a == null) {}
        la.e[] arrayOfe;
        for (i = 0;; i = a.length)
        {
          arrayOfe = new la.e[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfe, 0, i);
            j = i;
          }
          while (j < arrayOfe.length - 1)
          {
            arrayOfe[j] = new la.e();
            paramlk.a(arrayOfe[j]);
            paramlk.a();
            j += 1;
          }
        }
        arrayOfe[j] = new la.e();
        paramlk.a(arrayOfe[j]);
        a = arrayOfe;
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        la.e locale = a[i];
        if (locale != null) {
          paramzzsn.a(1, locale);
        }
        i += 1;
      }
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          la.e locale = a[j];
          k = i;
          if (locale != null) {
            k = i + zzsn.c(1, locale);
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
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
    } while (lp.a(a, a));
    return false;
  }
  
  public int hashCode()
  {
    return (getClass().getName().hashCode() + 527) * 31 + lp.a(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.la.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */