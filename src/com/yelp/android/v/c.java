package com.yelp.android.v;

class c
{
  protected int a;
  protected byte[] b;
  protected int c;
  protected int d;
  protected int[][] e;
  protected int[] f = new int['Ā'];
  protected int[] g = new int['Ā'];
  protected int[] h = new int['Ā'];
  protected int[] i = new int[32];
  
  public c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b = paramArrayOfByte;
    c = paramInt1;
    d = paramInt2;
    e = new int['Ā'][];
    paramInt1 = 0;
    while (paramInt1 < 256)
    {
      e[paramInt1] = new int[4];
      paramArrayOfByte = e[paramInt1];
      paramInt2 = (paramInt1 << 12) / 256;
      paramArrayOfByte[2] = paramInt2;
      paramArrayOfByte[1] = paramInt2;
      paramArrayOfByte[0] = paramInt2;
      h[paramInt1] = 256;
      g[paramInt1] = 0;
      paramInt1 += 1;
    }
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int m = f[paramInt2];
    int j = -1;
    int k = 1000;
    int n = m - 1;
    int[] arrayOfInt;
    int i1;
    if ((m < 256) || (n >= 0))
    {
      if (m >= 256) {
        break label398;
      }
      arrayOfInt = e[m];
      i1 = arrayOfInt[1] - paramInt2;
      if (i1 >= k)
      {
        i1 = 256;
        m = j;
        j = i1;
      }
    }
    for (;;)
    {
      i1 = n;
      int i2;
      if (n >= 0)
      {
        arrayOfInt = e[n];
        i2 = paramInt2 - arrayOfInt[1];
        if (i2 >= k)
        {
          i1 = -1;
          n = j;
          j = m;
          m = n;
          n = i1;
          break;
          i2 = m + 1;
          m = i1;
          if (i1 < 0) {
            m = -i1;
          }
          i3 = arrayOfInt[0] - paramInt1;
          i1 = i3;
          if (i3 < 0) {
            i1 = -i3;
          }
          i3 = i1 + m;
          if (i3 >= k) {
            break label387;
          }
          i1 = arrayOfInt[2] - paramInt3;
          m = i1;
          if (i1 < 0) {
            m = -i1;
          }
          i1 = i3 + m;
          if (i1 >= k) {
            break label387;
          }
          m = arrayOfInt[3];
          k = i1;
          j = i2;
          continue;
        }
        n -= 1;
        i1 = i2;
        if (i2 < 0) {
          i1 = -i2;
        }
        int i3 = arrayOfInt[0] - paramInt1;
        i2 = i3;
        if (i3 < 0) {
          i2 = -i3;
        }
        i3 = i2 + i1;
        i1 = n;
        if (i3 < k)
        {
          i2 = arrayOfInt[2] - paramInt3;
          i1 = i2;
          if (i2 < 0) {
            i1 = -i2;
          }
          i2 = i1 + i3;
          i1 = n;
          if (i2 < k)
          {
            i1 = arrayOfInt[3];
            m = j;
            k = i2;
            j = i1;
            break;
            return j;
          }
        }
      }
      n = j;
      j = m;
      m = n;
      n = i1;
      break;
      label387:
      m = j;
      j = i2;
      continue;
      label398:
      i1 = m;
      m = j;
      j = i1;
    }
  }
  
  protected void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int m = paramInt2 - paramInt1;
    if (m < -1) {
      m = -1;
    }
    for (;;)
    {
      paramInt1 = paramInt2 + paramInt1;
      int n = paramInt1;
      if (paramInt1 > 256) {
        n = 256;
      }
      int j = 1;
      int k = paramInt2 - 1;
      paramInt1 = paramInt2 + 1;
      paramInt2 = j;
      Object localObject;
      int i1;
      if ((paramInt1 < n) || (k > m))
      {
        localObject = i;
        j = paramInt2 + 1;
        i1 = localObject[paramInt2];
        if (paramInt1 >= n) {
          break label291;
        }
        localObject = e;
        paramInt2 = paramInt1 + 1;
        localObject = localObject[paramInt1];
      }
      label291:
      for (;;)
      {
        try
        {
          localObject[0] -= (localObject[0] - paramInt3) * i1 / 262144;
          localObject[1] -= (localObject[1] - paramInt4) * i1 / 262144;
          localObject[2] -= (localObject[2] - paramInt5) * i1 / 262144;
          paramInt1 = paramInt2;
        }
        catch (Exception localException2)
        {
          paramInt1 = paramInt2;
          continue;
          paramInt2 = j;
        }
        if (k > m)
        {
          localObject = e;
          paramInt2 = k - 1;
          localObject = localObject[k];
          try
          {
            localObject[0] -= (localObject[0] - paramInt3) * i1 / 262144;
            localObject[1] -= (localObject[1] - paramInt4) * i1 / 262144;
            localObject[2] -= i1 * (localObject[2] - paramInt5) / 262144;
            k = paramInt2;
            paramInt2 = j;
          }
          catch (Exception localException1)
          {
            k = paramInt2;
            paramInt2 = j;
          }
          break;
          return;
        }
        break;
      }
    }
  }
  
  public byte[] a()
  {
    byte[] arrayOfByte = new byte['̀'];
    int[] arrayOfInt = new int['Ā'];
    int j = 0;
    while (j < 256)
    {
      arrayOfInt[e[j][3]] = j;
      j += 1;
    }
    j = 0;
    int k = 0;
    while (j < 256)
    {
      int m = arrayOfInt[j];
      int n = k + 1;
      arrayOfByte[k] = ((byte)e[m][0]);
      int i1 = n + 1;
      arrayOfByte[n] = ((byte)e[m][1]);
      k = i1 + 1;
      arrayOfByte[i1] = ((byte)e[m][2]);
      j += 1;
    }
    return arrayOfByte;
  }
  
  protected int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int m = Integer.MAX_VALUE;
    int k = -1;
    int i1 = Integer.MAX_VALUE;
    int n = -1;
    int j = 0;
    int[] arrayOfInt;
    int i3;
    int i2;
    if (j < 256)
    {
      arrayOfInt = e[j];
      i3 = arrayOfInt[0] - paramInt1;
      i2 = i3;
      if (i3 < 0) {
        i2 = -i3;
      }
      int i4 = arrayOfInt[1] - paramInt2;
      i3 = i4;
      if (i4 < 0) {
        i3 = -i4;
      }
      int i5 = arrayOfInt[2] - paramInt3;
      i4 = i5;
      if (i5 < 0) {
        i4 = -i5;
      }
      i3 = i3 + i2 + i4;
      if (i3 >= i1) {
        break label273;
      }
      n = i3;
    }
    for (i1 = j;; i1 = i2)
    {
      i2 = i3 - (g[j] >> 12);
      if (i2 < m)
      {
        k = j;
        m = i2;
      }
      for (;;)
      {
        i2 = h[j] >> 10;
        arrayOfInt = h;
        arrayOfInt[j] -= i2;
        arrayOfInt = g;
        arrayOfInt[j] = ((i2 << 10) + arrayOfInt[j]);
        j += 1;
        i2 = i1;
        i1 = n;
        n = i2;
        break;
        arrayOfInt = h;
        arrayOfInt[n] += 64;
        arrayOfInt = g;
        arrayOfInt[n] -= 65536;
        return k;
      }
      label273:
      i2 = n;
      n = i1;
    }
  }
  
  public void b()
  {
    int m = 0;
    int k = 0;
    int j = 0;
    if (j < 256)
    {
      int[] arrayOfInt1 = e[j];
      int n = arrayOfInt1[1];
      int i1 = j + 1;
      int i2 = j;
      while (i1 < 256)
      {
        arrayOfInt2 = e[i1];
        int i3 = n;
        if (arrayOfInt2[1] < n)
        {
          i3 = arrayOfInt2[1];
          i2 = i1;
        }
        i1 += 1;
        n = i3;
      }
      int[] arrayOfInt2 = e[i2];
      if (j != i2)
      {
        i1 = arrayOfInt2[0];
        arrayOfInt2[0] = arrayOfInt1[0];
        arrayOfInt1[0] = i1;
        i1 = arrayOfInt2[1];
        arrayOfInt2[1] = arrayOfInt1[1];
        arrayOfInt1[1] = i1;
        i1 = arrayOfInt2[2];
        arrayOfInt2[2] = arrayOfInt1[2];
        arrayOfInt1[2] = i1;
        i1 = arrayOfInt2[3];
        arrayOfInt2[3] = arrayOfInt1[3];
        arrayOfInt1[3] = i1;
      }
      if (n == k) {
        break label277;
      }
      f[k] = (m + j >> 1);
      k += 1;
      while (k < n)
      {
        f[k] = j;
        k += 1;
      }
      k = n;
      m = j;
    }
    label277:
    for (;;)
    {
      j += 1;
      break;
      f[k] = (m + 255 >> 1);
      j = k + 1;
      while (j < 256)
      {
        f[j] = 255;
        j += 1;
      }
      return;
    }
  }
  
  protected void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int[] arrayOfInt = e[paramInt2];
    arrayOfInt[0] -= (arrayOfInt[0] - paramInt3) * paramInt1 / 1024;
    arrayOfInt[1] -= (arrayOfInt[1] - paramInt4) * paramInt1 / 1024;
    arrayOfInt[2] -= (arrayOfInt[2] - paramInt5) * paramInt1 / 1024;
  }
  
  public void c()
  {
    if (c < 1509) {
      d = 1;
    }
    a = ((d - 1) / 3 + 30);
    byte[] arrayOfByte = b;
    int i6 = c;
    int i7 = c / (d * 3);
    int k = i7 / 100;
    int j = 0;
    while (j < 32)
    {
      i[j] = ((1024 - j * j) * 256 / 1024 * 1024);
      j += 1;
    }
    int i3;
    int i1;
    int n;
    int i2;
    label132:
    int i4;
    int i5;
    if (c < 1509)
    {
      j = 3;
      int m = 0;
      i3 = 32;
      i1 = 2048;
      n = 0;
      i2 = 1024;
      if (n >= i7) {
        break label415;
      }
      i4 = (arrayOfByte[(m + 0)] & 0xFF) << 4;
      i5 = (arrayOfByte[(m + 1)] & 0xFF) << 4;
      int i8 = (arrayOfByte[(m + 2)] & 0xFF) << 4;
      int i9 = b(i4, i5, i8);
      b(i2, i9, i4, i5, i8);
      if (i3 != 0) {
        a(i3, i9, i4, i5, i8);
      }
      m += j;
      if (m < i6) {
        break label441;
      }
      m -= c;
    }
    label415:
    label441:
    for (;;)
    {
      i4 = n + 1;
      if (k == 0) {
        k = 1;
      }
      for (;;)
      {
        if (i4 % k == 0)
        {
          i2 -= i2 / a;
          i5 = i1 - i1 / 30;
          i1 = i5 >> 6;
          n = i1;
          if (i1 <= 1) {
            n = 0;
          }
          i1 = 0;
          for (;;)
          {
            if (i1 < n)
            {
              i[i1] = ((n * n - i1 * i1) * 256 / (n * n) * i2);
              i1 += 1;
              continue;
              if (c % 499 != 0)
              {
                j = 1497;
                break;
              }
              if (c % 491 != 0)
              {
                j = 1473;
                break;
              }
              if (c % 487 != 0)
              {
                j = 1461;
                break;
              }
              j = 1509;
              break;
              return;
            }
          }
          i3 = n;
          i1 = i5;
          n = i4;
          break label132;
        }
        n = i4;
        break label132;
      }
    }
  }
  
  public byte[] d()
  {
    c();
    e();
    b();
    return a();
  }
  
  public void e()
  {
    int j = 0;
    while (j < 256)
    {
      int[] arrayOfInt = e[j];
      arrayOfInt[0] >>= 4;
      arrayOfInt = e[j];
      arrayOfInt[1] >>= 4;
      arrayOfInt = e[j];
      arrayOfInt[2] >>= 4;
      e[j][3] = j;
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */