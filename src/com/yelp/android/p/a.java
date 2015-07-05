package com.yelp.android.p;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static final String a = a.class.getSimpleName();
  private static final Bitmap.Config b = Bitmap.Config.ARGB_8888;
  private int[] c;
  private ByteBuffer d;
  private final byte[] e = new byte['Ā'];
  private short[] f;
  private byte[] g;
  private byte[] h;
  private byte[] i;
  private int[] j;
  private int k;
  private byte[] l;
  private d m;
  private b n;
  private Bitmap o;
  private boolean p;
  private int q;
  
  public a(b paramb)
  {
    n = paramb;
    m = new d();
  }
  
  private Bitmap a(c paramc1, c paramc2)
  {
    int i8 = m.f;
    int i9 = m.g;
    int[] arrayOfInt = j;
    int i1;
    int i4;
    int i3;
    label84:
    int i2;
    int i7;
    if ((paramc2 != null) && (g > 0))
    {
      if (g == 2)
      {
        i1 = 0;
        if (!f) {
          i1 = m.l;
        }
        Arrays.fill(arrayOfInt, i1);
      }
    }
    else
    {
      a(paramc1);
      int i5 = 1;
      i4 = 8;
      int i6 = 0;
      i3 = 0;
      if (i3 >= d) {
        break label387;
      }
      if (!e) {
        break label464;
      }
      i1 = i6;
      i2 = i4;
      i7 = i5;
      if (i6 >= d) {
        i7 = i5 + 1;
      }
      switch (i7)
      {
      default: 
        i2 = i4;
        i1 = i6;
        label163:
        i6 = i1 + i2;
        i5 = i7;
      }
    }
    for (;;)
    {
      i1 += b;
      if (i1 < m.g)
      {
        int i10 = m.f * i1;
        i7 = i10 + a;
        i4 = c + i7;
        i1 = i4;
        if (m.f + i10 < i4) {
          i1 = m.f + i10;
        }
        i4 = c * i3;
        for (;;)
        {
          if (i7 < i1)
          {
            i10 = i[i4];
            i10 = c[(i10 & 0xFF)];
            if (i10 != 0) {
              arrayOfInt[i7] = i10;
            }
            i7 += 1;
            i4 += 1;
            continue;
            if ((g != 3) || (o == null)) {
              break;
            }
            o.getPixels(arrayOfInt, 0, i8, 0, 0, i8, i9);
            break;
            i1 = 4;
            i2 = i4;
            break label163;
            i1 = 2;
            i2 = 4;
            break label163;
            i1 = 1;
            i2 = 2;
            break label163;
          }
        }
      }
      i3 += 1;
      i4 = i2;
      break label84;
      label387:
      if (((p) && (g == 0)) || (g == 1))
      {
        if (o == null) {
          o = k();
        }
        o.setPixels(arrayOfInt, 0, i8, 0, 0, i8, i9);
      }
      paramc1 = k();
      paramc1.setPixels(arrayOfInt, 0, i8, 0, 0, i8, i9);
      return paramc1;
      label464:
      i1 = i3;
      i2 = i4;
    }
  }
  
  @TargetApi(12)
  private static void a(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12) {
      paramBitmap.setHasAlpha(true);
    }
  }
  
  private void a(c paramc)
  {
    if (paramc != null) {
      d.position(j);
    }
    if (paramc == null) {}
    int i18;
    int i19;
    int i15;
    for (int i14 = m.f * m.g;; i14 = c * d)
    {
      if ((i == null) || (i.length < i14)) {
        i = new byte[i14];
      }
      if (f == null) {
        f = new short['က'];
      }
      if (g == null) {
        g = new byte['က'];
      }
      if (h == null) {
        h = new byte['ခ'];
      }
      i18 = i();
      i19 = 1 << i18;
      i15 = -1;
      i2 = i18 + 1;
      i1 = 0;
      while (i1 < i19)
      {
        f[i1] = 0;
        g[i1] = ((byte)i1);
        i1 += 1;
      }
    }
    int i10 = 0;
    int i13 = 0;
    int i8 = 0;
    int i5 = 0;
    int i9 = 0;
    int i4 = i2;
    int i7 = (1 << i2) - 1;
    int i6 = i19 + 2;
    int i2 = 0;
    int i3 = 0;
    int i1 = 0;
    for (;;)
    {
      if (i13 < i14)
      {
        i11 = i2;
        i2 = i3;
        if (i3 != 0) {
          break label267;
        }
        i2 = j();
        if (i2 <= 0) {
          q = 3;
        }
      }
      else
      {
        while (i1 < i14)
        {
          i[i1] = 0;
          i1 += 1;
        }
      }
      int i11 = 0;
      label267:
      int i17 = e[i11];
      int i12 = i11 + 1;
      i11 = i2 - 1;
      i3 = i4;
      int i16 = i7;
      i4 = i5;
      i7 = i10 + ((i17 & 0xFF) << i9);
      i2 = i6;
      i10 = i9 + 8;
      i5 = i15;
      i6 = i1;
      i1 = i16;
      for (;;)
      {
        if (i10 < i3) {
          break label803;
        }
        i9 = i7 & i1;
        i7 >>= i3;
        i10 -= i3;
        if (i9 == i19)
        {
          i3 = i18 + 1;
          i1 = (1 << i3) - 1;
          i2 = i19 + 2;
          i5 = -1;
        }
        else
        {
          if (i9 > i2)
          {
            q = 3;
            i16 = i4;
            i9 = i10;
            i4 = i3;
            i17 = i2;
            i2 = i12;
            i10 = i7;
            i7 = i1;
            i3 = i11;
            i1 = i6;
            i15 = i5;
            i5 = i16;
            i6 = i17;
            break;
          }
          if (i9 == i19 + 1)
          {
            i16 = i4;
            i9 = i10;
            i4 = i3;
            i17 = i2;
            i2 = i12;
            i10 = i7;
            i7 = i1;
            i3 = i11;
            i1 = i6;
            i15 = i5;
            i5 = i16;
            i6 = i17;
            break;
          }
          if (i5 != -1) {
            break label542;
          }
          h[i8] = g[i9];
          i8 += 1;
          i4 = i9;
          i5 = i9;
        }
      }
      label542:
      if (i9 >= i2)
      {
        h[i8] = ((byte)i4);
        i8 += 1;
        i4 = i5;
      }
      for (;;)
      {
        if (i4 >= i19)
        {
          h[i8] = g[i4];
          i4 = f[i4];
          i8 += 1;
        }
        else
        {
          i16 = g[i4] & 0xFF;
          paramc = h;
          i17 = i8 + 1;
          paramc[i8] = ((byte)i16);
          i15 = i3;
          i8 = i1;
          i4 = i2;
          if (i2 < 4096)
          {
            f[i2] = ((short)i5);
            g[i2] = ((byte)i16);
            i2 += 1;
            i15 = i3;
            i8 = i1;
            i4 = i2;
            if ((i2 & i1) == 0)
            {
              i15 = i3;
              i8 = i1;
              i4 = i2;
              if (i2 < 4096)
              {
                i15 = i3 + 1;
                i8 = i1 + i2;
                i4 = i2;
              }
            }
          }
          i2 = i13;
          i1 = i17;
          while (i1 > 0)
          {
            i1 -= 1;
            i[i6] = h[i1];
            i2 += 1;
            i6 += 1;
            continue;
            return;
          }
          i13 = i2;
          i5 = i9;
          i9 = i1;
          i3 = i15;
          i1 = i8;
          i2 = i4;
          i8 = i9;
          i4 = i16;
          break;
          i4 = i9;
        }
      }
      label803:
      i16 = i4;
      i17 = i1;
      i1 = i11;
      i4 = i3;
      i11 = i2;
      i9 = i10;
      i2 = i12;
      i3 = i1;
      i1 = i6;
      i10 = i7;
      i15 = i5;
      i5 = i16;
      i7 = i17;
      i6 = i11;
    }
  }
  
  private int i()
  {
    try
    {
      int i1 = d.get();
      return i1 & 0xFF;
    }
    catch (Exception localException)
    {
      q = 1;
    }
    return 0;
  }
  
  private int j()
  {
    int i3 = i();
    int i2 = 0;
    int i1 = 0;
    if (i3 > 0) {
      for (;;)
      {
        i2 = i1;
        if (i1 < i3)
        {
          i2 = i3 - i1;
          try
          {
            d.get(e, i1, i2);
            i1 += i2;
          }
          catch (Exception localException)
          {
            Log.w(a, "Error Reading Block", localException);
            q = 1;
            i2 = i1;
          }
        }
      }
    }
    return i2;
  }
  
  private Bitmap k()
  {
    Bitmap localBitmap2 = n.a(m.f, m.g, b);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = Bitmap.createBitmap(m.f, m.g, b);
    }
    a(localBitmap1);
    return localBitmap1;
  }
  
  public int a(int paramInt)
  {
    int i2 = -1;
    int i1 = i2;
    if (paramInt >= 0)
    {
      i1 = i2;
      if (paramInt < m.c) {
        i1 = m.e.get(paramInt)).i;
      }
    }
    return i1;
  }
  
  public void a()
  {
    k = ((k + 1) % m.c);
  }
  
  public void a(d paramd, byte[] paramArrayOfByte)
  {
    m = paramd;
    l = paramArrayOfByte;
    q = 0;
    k = -1;
    d = ByteBuffer.wrap(paramArrayOfByte);
    d.rewind();
    d.order(ByteOrder.LITTLE_ENDIAN);
    p = false;
    paramArrayOfByte = e.iterator();
    while (paramArrayOfByte.hasNext()) {
      if (nextg == 3) {
        p = true;
      }
    }
    i = new byte[f * g];
    j = new int[f * g];
  }
  
  public int b()
  {
    if ((m.c <= 0) || (k < 0)) {
      return -1;
    }
    return a(k);
  }
  
  public int c()
  {
    return m.c;
  }
  
  public int d()
  {
    return k;
  }
  
  public void e()
  {
    k = -1;
  }
  
  public int f()
  {
    return m.m;
  }
  
  public Bitmap g()
  {
    int i1 = 0;
    for (;;)
    {
      c localc2;
      try
      {
        if ((m.c <= 0) || (k < 0))
        {
          if (Log.isLoggable(a, 3)) {
            Log.d(a, "unable to decode frame, frameCount=" + m.c + " framePointer=" + k);
          }
          q = 1;
        }
        if ((q == 1) || (q == 2))
        {
          if (Log.isLoggable(a, 3)) {
            Log.d(a, "Unable to decode frame, status=" + q);
          }
          localObject = null;
          return (Bitmap)localObject;
        }
        q = 0;
        localc2 = (c)m.e.get(k);
        int i2 = k - 1;
        if (i2 < 0) {
          break label352;
        }
        Object localObject = (c)m.e.get(i2);
        if (k == null)
        {
          c = m.a;
          if (f)
          {
            i1 = c[h];
            c[h] = 0;
          }
          if (c == null)
          {
            if (Log.isLoggable(a, 3)) {
              Log.d(a, "No Valid Color Table");
            }
            q = 1;
            localObject = null;
          }
        }
        else
        {
          c = k;
          if (m.j != h) {
            continue;
          }
          m.l = 0;
          continue;
        }
        localBitmap = a(localc2, localc1);
      }
      finally {}
      if (f) {
        c[h] = i1;
      }
      continue;
      label352:
      Bitmap localBitmap = null;
    }
  }
  
  public void h()
  {
    m = null;
    l = null;
    i = null;
    j = null;
    if (o != null) {
      n.a(o);
    }
    o = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */