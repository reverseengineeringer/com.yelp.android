package com.google.android.gms.internal;

import java.io.IOException;

public final class lk
{
  private final byte[] a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g = Integer.MAX_VALUE;
  private int h;
  private int i = 64;
  private int j = 67108864;
  
  private lk(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = (paramInt1 + paramInt2);
    e = paramInt1;
  }
  
  public static long a(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }
  
  public static lk a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static lk a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new lk(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void s()
  {
    c += d;
    int k = c;
    if (k > g)
    {
      d = (k - g);
      c -= d;
      return;
    }
    d = 0;
  }
  
  public int a()
    throws IOException
  {
    if (p())
    {
      f = 0;
      return 0;
    }
    f = k();
    if (f == 0) {
      throw zzst.zzJv();
    }
    return f;
  }
  
  public void a(int paramInt)
    throws zzst
  {
    if (f != paramInt) {
      throw zzst.zzJw();
    }
  }
  
  public void a(lq paramlq)
    throws IOException
  {
    int k = k();
    if (h >= i) {
      throw zzst.zzJy();
    }
    k = c(k);
    h += 1;
    paramlq.b(this);
    a(0);
    h -= 1;
    d(k);
  }
  
  public byte[] a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return lt.h;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int k = b;
    System.arraycopy(a, k + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public void b()
    throws IOException
  {
    int k;
    do
    {
      k = a();
    } while ((k != 0) && (b(k)));
  }
  
  public boolean b(int paramInt)
    throws IOException
  {
    switch (lt.a(paramInt))
    {
    default: 
      throw zzst.zzJx();
    case 0: 
      f();
      return true;
    case 1: 
      n();
      return true;
    case 2: 
      g(k());
      return true;
    case 3: 
      b();
      a(lt.a(lt.b(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    m();
    return true;
  }
  
  public float c()
    throws IOException
  {
    return Float.intBitsToFloat(m());
  }
  
  public int c(int paramInt)
    throws zzst
  {
    if (paramInt < 0) {
      throw zzst.zzJt();
    }
    paramInt = e + paramInt;
    int k = g;
    if (paramInt > k) {
      throw zzst.zzJs();
    }
    g = paramInt;
    s();
    return k;
  }
  
  public long d()
    throws IOException
  {
    return l();
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
    s();
  }
  
  public long e()
    throws IOException
  {
    return l();
  }
  
  public void e(int paramInt)
  {
    if (paramInt > e - b) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (e - b));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    e = (b + paramInt);
  }
  
  public int f()
    throws IOException
  {
    return k();
  }
  
  public byte[] f(int paramInt)
    throws IOException
  {
    if (paramInt < 0) {
      throw zzst.zzJt();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw zzst.zzJs();
    }
    if (paramInt <= c - e)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(a, e, arrayOfByte, 0, paramInt);
      e += paramInt;
      return arrayOfByte;
    }
    throw zzst.zzJs();
  }
  
  public void g(int paramInt)
    throws IOException
  {
    if (paramInt < 0) {
      throw zzst.zzJt();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw zzst.zzJs();
    }
    if (paramInt <= c - e)
    {
      e += paramInt;
      return;
    }
    throw zzst.zzJs();
  }
  
  public boolean g()
    throws IOException
  {
    return k() != 0;
  }
  
  public String h()
    throws IOException
  {
    int k = k();
    if ((k <= c - e) && (k > 0))
    {
      String str = new String(a, e, k, "UTF-8");
      e = (k + e);
      return str;
    }
    return new String(f(k), "UTF-8");
  }
  
  public byte[] i()
    throws IOException
  {
    int k = k();
    if ((k <= c - e) && (k > 0))
    {
      byte[] arrayOfByte = new byte[k];
      System.arraycopy(a, e, arrayOfByte, 0, k);
      e = (k + e);
      return arrayOfByte;
    }
    if (k == 0) {
      return lt.h;
    }
    return f(k);
  }
  
  public long j()
    throws IOException
  {
    return a(l());
  }
  
  public int k()
    throws IOException
  {
    int k = r();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = r();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = r();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = r();
      if (n >= 0) {
        return k | n << 21;
      }
      m = r();
      n = k | (n & 0x7F) << 21 | m << 28;
      k = n;
    } while (m >= 0);
    int m = 0;
    for (;;)
    {
      if (m >= 5) {
        break label133;
      }
      k = n;
      if (r() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw zzst.zzJu();
  }
  
  public long l()
    throws IOException
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = r();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0) {
        return l;
      }
      k += 7;
    }
    throw zzst.zzJu();
  }
  
  public int m()
    throws IOException
  {
    return r() & 0xFF | (r() & 0xFF) << 8 | (r() & 0xFF) << 16 | (r() & 0xFF) << 24;
  }
  
  public long n()
    throws IOException
  {
    int k = r();
    int m = r();
    int n = r();
    int i1 = r();
    int i2 = r();
    int i3 = r();
    int i4 = r();
    int i5 = r();
    long l = k;
    return (m & 0xFF) << 8 | l & 0xFF | (n & 0xFF) << 16 | (i1 & 0xFF) << 24 | (i2 & 0xFF) << 32 | (i3 & 0xFF) << 40 | (i4 & 0xFF) << 48 | (i5 & 0xFF) << 56;
  }
  
  public int o()
  {
    if (g == Integer.MAX_VALUE) {
      return -1;
    }
    int k = e;
    return g - k;
  }
  
  public boolean p()
  {
    return e == c;
  }
  
  public int q()
  {
    return e - b;
  }
  
  public byte r()
    throws IOException
  {
    if (e == c) {
      throw zzst.zzJs();
    }
    byte[] arrayOfByte = a;
    int k = e;
    e = (k + 1);
    return arrayOfByte[k];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */