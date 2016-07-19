package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

class lx$a
{
  public long a;
  public String b;
  public String c;
  public long d;
  public long e;
  public long f;
  public long g;
  public Map<String, String> h;
  
  private lx$a() {}
  
  public lx$a(String paramString, u.a parama)
  {
    b = paramString;
    a = a.length;
    c = b;
    d = c;
    e = d;
    f = e;
    g = f;
    h = g;
  }
  
  public static a a(InputStream paramInputStream)
    throws IOException
  {
    a locala = new a();
    if (lx.a(paramInputStream) != 538247942) {
      throw new IOException();
    }
    b = lx.c(paramInputStream);
    c = lx.c(paramInputStream);
    if (c.equals("")) {
      c = null;
    }
    d = lx.b(paramInputStream);
    e = lx.b(paramInputStream);
    f = lx.b(paramInputStream);
    g = lx.b(paramInputStream);
    h = lx.d(paramInputStream);
    return locala;
  }
  
  public u.a a(byte[] paramArrayOfByte)
  {
    u.a locala = new u.a();
    a = paramArrayOfByte;
    b = c;
    c = d;
    d = e;
    e = f;
    f = g;
    g = h;
    return locala;
  }
  
  public boolean a(OutputStream paramOutputStream)
  {
    try
    {
      lx.a(paramOutputStream, 538247942);
      lx.a(paramOutputStream, b);
      if (c == null) {}
      for (String str = "";; str = c)
      {
        lx.a(paramOutputStream, str);
        lx.a(paramOutputStream, d);
        lx.a(paramOutputStream, e);
        lx.a(paramOutputStream, f);
        lx.a(paramOutputStream, g);
        lx.a(h, paramOutputStream);
        paramOutputStream.flush();
        return true;
      }
      return false;
    }
    catch (IOException paramOutputStream)
    {
      li.b("%s", new Object[] { paramOutputStream.toString() });
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */