package com.yelp.android.o;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

class f
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;
  
  public f(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("capacity <= 0");
    }
    if (!paramCharset.equals(h.a)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    a = paramInputStream;
    b = paramCharset;
    c = new byte[paramInt];
  }
  
  public f(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void c()
  {
    int i = a.read(c, 0, c.length);
    if (i == -1) {
      throw new EOFException();
    }
    d = 0;
    e = i;
  }
  
  public String a()
  {
    synchronized (a)
    {
      if (c == null) {
        throw new IOException("LineReader is closed");
      }
    }
    if (d >= e) {
      c();
    }
    int i = d;
    for (;;)
    {
      if (i != e)
      {
        if (c[i] != 10) {
          break label272;
        }
        if ((i == d) || (c[(i - 1)] != 13)) {
          break label267;
        }
      }
      label267:
      for (int j = i - 1;; j = i)
      {
        Object localObject2 = new String(c, d, j - d, b.name());
        d = (i + 1);
        return (String)localObject2;
        localObject2 = new g(this, e - d + 80);
        for (;;)
        {
          ((ByteArrayOutputStream)localObject2).write(c, d, e - d);
          e = -1;
          c();
          i = d;
          while (i != e)
          {
            if (c[i] == 10)
            {
              if (i != d) {
                ((ByteArrayOutputStream)localObject2).write(c, d, i - d);
              }
              d = (i + 1);
              localObject2 = ((ByteArrayOutputStream)localObject2).toString();
              return (String)localObject2;
            }
            i += 1;
          }
        }
      }
      label272:
      i += 1;
    }
  }
  
  public boolean b()
  {
    return e == -1;
  }
  
  public void close()
  {
    synchronized (a)
    {
      if (c != null)
      {
        c = null;
        a.close();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.o.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */