package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class lu$c
  extends ll<c>
{
  public byte[] a;
  public byte[][] b;
  public boolean c;
  
  public lu$c()
  {
    a();
  }
  
  public c a()
  {
    a = lt.h;
    b = lt.g;
    c = false;
    m = null;
    S = -1;
    return this;
  }
  
  public c a(lk paramlk)
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
      case 10: 
        a = paramlk.i();
        break;
      case 18: 
        int j = lt.b(paramlk, 18);
        if (b == null) {}
        byte[][] arrayOfByte;
        for (i = 0;; i = b.length)
        {
          arrayOfByte = new byte[j + i][];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, arrayOfByte, 0, i);
            j = i;
          }
          while (j < arrayOfByte.length - 1)
          {
            arrayOfByte[j] = paramlk.i();
            paramlk.a();
            j += 1;
          }
        }
        arrayOfByte[j] = paramlk.i();
        b = arrayOfByte;
        break;
      case 24: 
        c = paramlk.g();
      }
    }
  }
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (!Arrays.equals(a, lt.h)) {
      paramzzsn.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        byte[] arrayOfByte = b[i];
        if (arrayOfByte != null) {
          paramzzsn.a(2, arrayOfByte);
        }
        i += 1;
      }
    }
    if (c) {
      paramzzsn.a(3, c);
    }
    super.a(paramzzsn);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int i = j;
    if (!Arrays.equals(a, lt.h)) {
      i = j + zzsn.b(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < b.length)
        {
          byte[] arrayOfByte = b[j];
          int i1 = k;
          n = m;
          if (arrayOfByte != null)
          {
            n = m + 1;
            i1 = k + zzsn.c(arrayOfByte);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (c) {
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
            } while (!(paramObject instanceof c));
            paramObject = (c)paramObject;
            bool1 = bool2;
          } while (!Arrays.equals(a, a));
          bool1 = bool2;
        } while (!lp.a(b, b));
        bool1 = bool2;
      } while (c != c);
      if ((m != null) && (!m.b())) {
        break label108;
      }
      if (m == null) {
        break;
      }
      bool1 = bool2;
    } while (!m.b());
    return true;
    label108:
    return m.equals(m);
  }
  
  public int hashCode()
  {
    int k = getClass().getName().hashCode();
    int m = Arrays.hashCode(a);
    int n = lp.a(b);
    int i;
    if (c)
    {
      i = 1231;
      if ((this.m != null) && (!this.m.b())) {
        break label94;
      }
    }
    label94:
    for (int j = 0;; j = this.m.hashCode())
    {
      return j + (i + (((k + 527) * 31 + m) * 31 + n) * 31) * 31;
      i = 1237;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lu.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */