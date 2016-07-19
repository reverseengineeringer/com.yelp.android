package com.google.android.gms.internal;

public final class ln
  implements Cloneable
{
  private static final lo a = new lo();
  private boolean b = false;
  private int[] c;
  private lo[] d;
  private int e;
  
  ln()
  {
    this(10);
  }
  
  ln(int paramInt)
  {
    paramInt = c(paramInt);
    c = new int[paramInt];
    d = new lo[paramInt];
    e = 0;
  }
  
  private boolean a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean a(lo[] paramArrayOflo1, lo[] paramArrayOflo2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (!paramArrayOflo1[i].equals(paramArrayOflo2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private int c(int paramInt)
  {
    return d(paramInt * 4) / 4;
  }
  
  private int d(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  private void d()
  {
    int m = e;
    int[] arrayOfInt = c;
    lo[] arrayOflo = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      lo locallo = arrayOflo[i];
      k = j;
      if (locallo != a)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOflo[j] = locallo;
          arrayOflo[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  private int e(int paramInt)
  {
    int i = 0;
    int j = e - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = c[k];
      if (m < paramInt) {
        i = k + 1;
      } else if (m > paramInt) {
        j = k - 1;
      } else {
        return k;
      }
    }
    return i ^ 0xFFFFFFFF;
  }
  
  int a()
  {
    if (b) {
      d();
    }
    return e;
  }
  
  lo a(int paramInt)
  {
    paramInt = e(paramInt);
    if ((paramInt < 0) || (d[paramInt] == a)) {
      return null;
    }
    return d[paramInt];
  }
  
  void a(int paramInt, lo paramlo)
  {
    int i = e(paramInt);
    if (i >= 0)
    {
      d[i] = paramlo;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramInt;
      d[j] = paramlo;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        d();
        i = e(paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = c(e + 1);
      int[] arrayOfInt = new int[j];
      lo[] arrayOflo = new lo[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, arrayOflo, 0, d.length);
      c = arrayOfInt;
      d = arrayOflo;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramInt;
    d[i] = paramlo;
    e += 1;
  }
  
  lo b(int paramInt)
  {
    if (b) {
      d();
    }
    return d[paramInt];
  }
  
  public boolean b()
  {
    return a() == 0;
  }
  
  public final ln c()
  {
    int i = 0;
    int j = a();
    ln localln = new ln(j);
    System.arraycopy(c, 0, c, 0, j);
    while (i < j)
    {
      if (d[i] != null) {
        d[i] = d[i].b();
      }
      i += 1;
    }
    e = j;
    return localln;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ln)) {
        return false;
      }
      paramObject = (ln)paramObject;
      if (a() != ((ln)paramObject).a()) {
        return false;
      }
    } while ((a(c, c, e)) && (a(d, d, e)));
    return false;
  }
  
  public int hashCode()
  {
    if (b) {
      d();
    }
    int j = 17;
    int i = 0;
    while (i < e)
    {
      j = (j * 31 + c[i]) * 31 + d[i].hashCode();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */