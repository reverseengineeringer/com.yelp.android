package com.yelp.android.v;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;

public class a
{
  private int a;
  private int b;
  private Integer c = null;
  private int d;
  private int e = -1;
  private int f = 0;
  private boolean g = false;
  private OutputStream h;
  private Bitmap i;
  private byte[] j;
  private byte[] k;
  private int l;
  private byte[] m;
  private boolean[] n = new boolean['Ā'];
  private int o = 7;
  private int p = -1;
  private boolean q = false;
  private boolean r = true;
  private boolean s = false;
  private int t = 10;
  private boolean u;
  
  private void a(String paramString)
    throws IOException
  {
    int i1 = 0;
    while (i1 < paramString.length())
    {
      h.write((byte)paramString.charAt(i1));
      i1 += 1;
    }
  }
  
  private int b(int paramInt)
  {
    int i2 = 0;
    if (m == null) {
      i3 = -1;
    }
    int i4;
    int i5;
    int i6;
    int i1;
    int i7;
    do
    {
      return i3;
      i4 = Color.red(paramInt);
      i5 = Color.green(paramInt);
      i6 = Color.blue(paramInt);
      i1 = 16777216;
      i7 = m.length;
      paramInt = 0;
      i3 = paramInt;
    } while (i2 >= i7);
    byte[] arrayOfByte = m;
    int i3 = i2 + 1;
    i2 = i4 - (arrayOfByte[i2] & 0xFF);
    arrayOfByte = m;
    int i8 = i3 + 1;
    i3 = i5 - (arrayOfByte[i3] & 0xFF);
    int i9 = i6 - (m[i8] & 0xFF);
    i2 = i2 * i2 + i3 * i3 + i9 * i9;
    i3 = i8 / 3;
    if ((n[i3] != 0) && (i2 < i1))
    {
      i1 = i3;
      paramInt = i2;
    }
    for (;;)
    {
      i3 = i1;
      i2 = i8 + 1;
      i1 = paramInt;
      paramInt = i3;
      break;
      i2 = paramInt;
      paramInt = i1;
      i1 = i2;
    }
  }
  
  private void b()
  {
    int i2 = j.length;
    int i4 = i2 / 3;
    k = new byte[i4];
    c localc = new c(j, i2, t);
    m = localc.d();
    i2 = 0;
    while (i2 < m.length)
    {
      int i1 = m[i2];
      m[i2] = m[(i2 + 2)];
      m[(i2 + 2)] = i1;
      n[(i2 / 3)] = false;
      i2 += 3;
    }
    i2 = 0;
    int i3 = 0;
    while (i2 < i4)
    {
      byte[] arrayOfByte = j;
      int i7 = i3 + 1;
      int i5 = arrayOfByte[i3];
      arrayOfByte = j;
      int i6 = i7 + 1;
      i7 = arrayOfByte[i7];
      arrayOfByte = j;
      i3 = i6 + 1;
      i5 = localc.a(i5 & 0xFF, i7 & 0xFF, arrayOfByte[i6] & 0xFF);
      n[i5] = true;
      k[i2] = ((byte)i5);
      i2 += 1;
    }
    j = null;
    l = 8;
    o = 7;
    if (c != null) {
      d = b(c.intValue());
    }
    while (!u) {
      return;
    }
    d = b(0);
  }
  
  private void c()
  {
    boolean bool = false;
    int i1 = i.getWidth();
    int i2 = i.getHeight();
    if ((i1 != a) || (i2 != b))
    {
      localObject = Bitmap.createBitmap(a, b, Bitmap.Config.ARGB_8888);
      new Canvas((Bitmap)localObject).drawBitmap((Bitmap)localObject, 0.0F, 0.0F, null);
      i = ((Bitmap)localObject);
    }
    Object localObject = new int[i1 * i2];
    i.getPixels((int[])localObject, 0, i1, 0, 0, i1, i2);
    j = new byte[localObject.length * 3];
    u = false;
    int i5 = localObject.length;
    i1 = 0;
    int i4 = 0;
    i2 = 0;
    while (i1 < i5)
    {
      int i6 = localObject[i1];
      int i3 = i4;
      if (i6 == 0) {
        i3 = i4 + 1;
      }
      byte[] arrayOfByte = j;
      i4 = i2 + 1;
      arrayOfByte[i2] = ((byte)(i6 & 0xFF));
      arrayOfByte = j;
      int i7 = i4 + 1;
      arrayOfByte[i4] = ((byte)(i6 >> 8 & 0xFF));
      arrayOfByte = j;
      i2 = i7 + 1;
      arrayOfByte[i7] = ((byte)(i6 >> 16 & 0xFF));
      i1 += 1;
      i4 = i3;
    }
    double d1 = i4 * 100 / localObject.length;
    if (d1 > 4.0D) {
      bool = true;
    }
    u = bool;
    if (Log.isLoggable("AnimatedGifEncoder", 3)) {
      Log.d("AnimatedGifEncoder", "got pixels for frame with " + d1 + "% transparent pixels");
    }
  }
  
  private void c(int paramInt)
    throws IOException
  {
    h.write(paramInt & 0xFF);
    h.write(paramInt >> 8 & 0xFF);
  }
  
  private void d()
    throws IOException
  {
    h.write(33);
    h.write(249);
    h.write(4);
    int i1;
    int i2;
    if ((c == null) && (!u))
    {
      i1 = 0;
      i2 = 0;
    }
    for (;;)
    {
      if (p >= 0) {
        i1 = p & 0x7;
      }
      h.write(i1 << 2 | 0x0 | 0x0 | i2);
      c(f);
      h.write(d);
      h.write(0);
      return;
      i2 = 1;
      i1 = 2;
    }
  }
  
  private void e()
    throws IOException
  {
    h.write(44);
    c(0);
    c(0);
    c(a);
    c(b);
    if (r)
    {
      h.write(0);
      return;
    }
    h.write(o | 0x80);
  }
  
  private void f()
    throws IOException
  {
    c(a);
    c(b);
    h.write(o | 0xF0);
    h.write(0);
    h.write(0);
  }
  
  private void g()
    throws IOException
  {
    h.write(33);
    h.write(255);
    h.write(11);
    a("NETSCAPE2.0");
    h.write(3);
    h.write(1);
    c(e);
    h.write(0);
  }
  
  private void h()
    throws IOException
  {
    h.write(m, 0, m.length);
    int i2 = m.length;
    int i1 = 0;
    while (i1 < 768 - i2)
    {
      h.write(0);
      i1 += 1;
    }
  }
  
  private void i()
    throws IOException
  {
    new b(a, b, k, l).b(h);
  }
  
  public void a(int paramInt)
  {
    f = Math.round(paramInt / 10.0F);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if ((g) && (!r)) {
      return;
    }
    a = paramInt1;
    b = paramInt2;
    if (a < 1) {
      a = 320;
    }
    if (b < 1) {
      b = 240;
    }
    s = true;
  }
  
  public boolean a()
  {
    if (!g) {
      return false;
    }
    g = false;
    try
    {
      h.write(59);
      h.flush();
      if (q) {
        h.close();
      }
      bool = true;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    d = 0;
    h = null;
    i = null;
    j = null;
    k = null;
    m = null;
    q = false;
    r = true;
    return bool;
  }
  
  public boolean a(Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (!g)) {
      return false;
    }
    try
    {
      if (!s) {
        a(paramBitmap.getWidth(), paramBitmap.getHeight());
      }
      i = paramBitmap;
      c();
      b();
      if (r)
      {
        f();
        h();
        if (e >= 0) {
          g();
        }
      }
      d();
      e();
      if (!r) {
        h();
      }
      i();
      r = false;
      return true;
    }
    catch (IOException paramBitmap) {}
    return false;
  }
  
  public boolean a(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      return false;
    }
    boolean bool = true;
    q = false;
    h = paramOutputStream;
    try
    {
      a("GIF89a");
      g = bool;
      return bool;
    }
    catch (IOException paramOutputStream)
    {
      for (;;)
      {
        bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */