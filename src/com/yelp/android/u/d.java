package com.yelp.android.u;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;

public class d
{
  private final byte[] a = new byte['Ā'];
  private ByteBuffer b;
  private c c;
  private int d = 0;
  
  private int[] a(int paramInt)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[paramInt * 3];
    try
    {
      b.get(arrayOfByte);
      int[] arrayOfInt2 = new int['Ā'];
      int j = 0;
      int[] arrayOfInt1;
      for (;;)
      {
        arrayOfInt1 = arrayOfInt2;
        if (i >= paramInt) {
          break;
        }
        int n = j + 1;
        int k = arrayOfByte[j];
        int m = n + 1;
        n = arrayOfByte[n];
        j = m + 1;
        arrayOfInt2[i] = ((k & 0xFF) << 16 | 0xFF000000 | (n & 0xFF) << 8 | arrayOfByte[m] & 0xFF);
        i += 1;
      }
      return arrayOfInt1;
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      arrayOfInt1 = null;
      if (Log.isLoggable("GifHeaderParser", 3)) {
        Log.d("GifHeaderParser", "Format Error Reading Color Table", localBufferUnderflowException);
      }
      c.b = 1;
    }
  }
  
  private void c()
  {
    b = null;
    Arrays.fill(a, (byte)0);
    c = new c();
    d = 0;
  }
  
  private void d()
  {
    int i = 0;
    while ((i == 0) && (!o())) {
      switch (m())
      {
      default: 
        c.b = 1;
        break;
      case 44: 
        if (c.d == null) {
          c.d = new b();
        }
        f();
        break;
      case 33: 
        switch (m())
        {
        default: 
          k();
          break;
        case 249: 
          c.d = new b();
          e();
          break;
        case 255: 
          l();
          String str = "";
          int j = 0;
          while (j < 11)
          {
            str = str + (char)a[j];
            j += 1;
          }
          if (str.equals("NETSCAPE2.0")) {
            g();
          } else {
            k();
          }
          break;
        case 254: 
          k();
          break;
        case 1: 
          k();
        }
        break;
      case 59: 
        i = 1;
      }
    }
  }
  
  private void e()
  {
    boolean bool = true;
    m();
    int i = m();
    c.d.g = ((i & 0x1C) >> 2);
    if (c.d.g == 0) {
      c.d.g = 1;
    }
    b localb = c.d;
    if ((i & 0x1) != 0) {}
    for (;;)
    {
      f = bool;
      int j = n();
      i = j;
      if (j < 3) {
        i = 10;
      }
      c.d.i = (i * 10);
      c.d.h = m();
      m();
      return;
      bool = false;
    }
  }
  
  private void f()
  {
    boolean bool = true;
    c.d.a = n();
    c.d.b = n();
    c.d.c = n();
    c.d.d = n();
    int j = m();
    int i;
    int k;
    if ((j & 0x80) != 0)
    {
      i = 1;
      k = (int)Math.pow(2.0D, (j & 0x7) + 1);
      localObject = c.d;
      if ((j & 0x40) == 0) {
        break label165;
      }
      label105:
      e = bool;
      if (i == 0) {
        break label171;
      }
    }
    label165:
    label171:
    for (c.d.k = a(k);; c.d.k = null)
    {
      c.d.j = b.position();
      j();
      if (!o()) {
        break label185;
      }
      return;
      i = 0;
      break;
      bool = false;
      break label105;
    }
    label185:
    Object localObject = c;
    c += 1;
    c.e.add(c.d);
  }
  
  private void g()
  {
    do
    {
      l();
      if (a[0] == 1)
      {
        int i = a[1];
        int j = a[2];
        c.m = (i & 0xFF | (j & 0xFF) << 8);
      }
    } while ((d > 0) && (!o()));
  }
  
  private void h()
  {
    String str = "";
    int i = 0;
    while (i < 6)
    {
      str = str + (char)m();
      i += 1;
    }
    if (!str.startsWith("GIF")) {
      c.b = 1;
    }
    do
    {
      return;
      i();
    } while ((!c.h) || (o()));
    c.a = a(c.i);
    c.l = c.a[c.j];
  }
  
  private void i()
  {
    c.f = n();
    c.g = n();
    int i = m();
    c localc = c;
    if ((i & 0x80) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      c.i = (2 << (i & 0x7));
      c.j = m();
      c.k = m();
      return;
    }
  }
  
  private void j()
  {
    m();
    k();
  }
  
  private void k()
  {
    int i;
    do
    {
      i = m();
      b.position(b.position() + i);
    } while (i > 0);
  }
  
  private int l()
  {
    int m = 0;
    int i = 0;
    d = m();
    if (d > 0)
    {
      int j = 0;
      for (;;)
      {
        int k = j;
        m = i;
        try
        {
          if (i < d)
          {
            k = j;
            j = d - i;
            k = j;
            b.get(a, i, j);
            i += j;
          }
        }
        catch (Exception localException)
        {
          if (Log.isLoggable("GifHeaderParser", 3)) {
            Log.d("GifHeaderParser", "Error Reading Block n: " + i + " count: " + k + " blockSize: " + d, localException);
          }
          c.b = 1;
          m = i;
        }
      }
    }
    return m;
  }
  
  private int m()
  {
    try
    {
      int i = b.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      c.b = 1;
    }
    return 0;
  }
  
  private int n()
  {
    return b.getShort();
  }
  
  private boolean o()
  {
    return c.b != 0;
  }
  
  public d a(byte[] paramArrayOfByte)
  {
    c();
    if (paramArrayOfByte != null)
    {
      b = ByteBuffer.wrap(paramArrayOfByte);
      b.rewind();
      b.order(ByteOrder.LITTLE_ENDIAN);
      return this;
    }
    b = null;
    c.b = 2;
    return this;
  }
  
  public void a()
  {
    b = null;
    c = null;
  }
  
  public c b()
  {
    if (b == null) {
      throw new IllegalStateException("You must call setData() before parseHeader()");
    }
    if (o()) {
      return c;
    }
    h();
    if (!o())
    {
      d();
      if (c.c < 0) {
        c.b = 1;
      }
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.u.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */