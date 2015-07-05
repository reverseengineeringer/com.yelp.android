package com.yelp.android.q;

import java.io.OutputStream;

class b
{
  int a;
  int b = 12;
  int c;
  int d = 4096;
  int[] e = new int['ᎋ'];
  int[] f = new int['ᎋ'];
  int g = 5003;
  int h = 0;
  boolean i = false;
  int j;
  int k;
  int l;
  int m = 0;
  int n = 0;
  int[] o = { 0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535 };
  int p;
  byte[] q = new byte['Ā'];
  private int r;
  private int s;
  private byte[] t;
  private int u;
  private int v;
  private int w;
  
  b(int paramInt1, int paramInt2, byte[] paramArrayOfByte, int paramInt3)
  {
    r = paramInt1;
    s = paramInt2;
    t = paramArrayOfByte;
    u = Math.max(2, paramInt3);
  }
  
  private int a()
  {
    if (v == 0) {
      return -1;
    }
    v -= 1;
    byte[] arrayOfByte = t;
    int i1 = w;
    w = (i1 + 1);
    return arrayOfByte[i1] & 0xFF;
  }
  
  void a(byte paramByte, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = q;
    int i1 = p;
    p = (i1 + 1);
    arrayOfByte[i1] = paramByte;
    if (p >= 254) {
      c(paramOutputStream);
    }
  }
  
  void a(int paramInt)
  {
    int i1 = 0;
    while (i1 < paramInt)
    {
      e[i1] = -1;
      i1 += 1;
    }
  }
  
  void a(int paramInt, OutputStream paramOutputStream)
  {
    int i2 = 0;
    j = paramInt;
    i = false;
    a = j;
    c = b(a);
    k = (1 << paramInt - 1);
    l = (k + 1);
    h = (k + 2);
    p = 0;
    int i1 = a();
    paramInt = g;
    while (paramInt < 65536)
    {
      i2 += 1;
      paramInt *= 2;
    }
    int i6 = g;
    a(i6);
    b(k, paramOutputStream);
    paramInt = i1;
    for (;;)
    {
      int i3 = a();
      if (i3 == -1) {
        break;
      }
      int i7 = (i3 << b) + paramInt;
      i1 = i3 << 8 - i2 ^ paramInt;
      if (e[i1] == i7)
      {
        paramInt = f[i1];
      }
      else
      {
        int i4 = i1;
        if (e[i1] >= 0)
        {
          i4 = i6 - i1;
          int i5 = i1;
          if (i1 == 0)
          {
            i4 = 1;
            i5 = i1;
          }
          do
          {
            i5 -= i4;
            i1 = i5;
            if (i5 < 0) {
              i1 = i5 + i6;
            }
            if (e[i1] == i7)
            {
              paramInt = f[i1];
              break;
            }
            i5 = i1;
          } while (e[i1] >= 0);
          i4 = i1;
        }
        b(paramInt, paramOutputStream);
        if (h < d)
        {
          int[] arrayOfInt = f;
          paramInt = h;
          h = (paramInt + 1);
          arrayOfInt[i4] = paramInt;
          e[i4] = i7;
          paramInt = i3;
        }
        else
        {
          a(paramOutputStream);
          paramInt = i3;
        }
      }
    }
    b(paramInt, paramOutputStream);
    b(l, paramOutputStream);
  }
  
  void a(OutputStream paramOutputStream)
  {
    a(g);
    h = (k + 2);
    i = true;
    b(k, paramOutputStream);
  }
  
  final int b(int paramInt)
  {
    return (1 << paramInt) - 1;
  }
  
  void b(int paramInt, OutputStream paramOutputStream)
  {
    m &= o[n];
    if (n > 0) {}
    for (m |= paramInt << n;; m = paramInt) {
      for (n += a; n >= 8; n -= 8)
      {
        a((byte)(m & 0xFF), paramOutputStream);
        m >>= 8;
      }
    }
    if ((h > c) || (i))
    {
      if (!i) {
        break label212;
      }
      int i1 = j;
      a = i1;
      c = b(i1);
      i = false;
    }
    while (paramInt == l)
    {
      for (;;)
      {
        if (n > 0)
        {
          a((byte)(m & 0xFF), paramOutputStream);
          m >>= 8;
          n -= 8;
          continue;
          label212:
          a += 1;
          if (a == b)
          {
            c = d;
            break;
          }
          c = b(a);
          break;
        }
      }
      c(paramOutputStream);
    }
  }
  
  void b(OutputStream paramOutputStream)
  {
    paramOutputStream.write(u);
    v = (r * s);
    w = 0;
    a(u + 1, paramOutputStream);
    paramOutputStream.write(0);
  }
  
  void c(OutputStream paramOutputStream)
  {
    if (p > 0)
    {
      paramOutputStream.write(p);
      paramOutputStream.write(q, 0, p);
      p = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.q.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */