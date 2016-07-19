package com.yelp.android.t;

import java.io.File;
import java.io.IOException;

public final class a$a
{
  private final a.b b;
  private final boolean[] c;
  private boolean d;
  
  private a$a(a parama, a.b paramb)
  {
    b = paramb;
    if (a.b.d(paramb)) {}
    for (parama = null;; parama = new boolean[a.e(parama)])
    {
      c = parama;
      return;
    }
  }
  
  public File a(int paramInt)
    throws IOException
  {
    synchronized (a)
    {
      if (a.b.a(b) != this) {
        throw new IllegalStateException();
      }
    }
    if (!a.b.d(b)) {
      c[paramInt] = true;
    }
    File localFile = b.b(paramInt);
    if (!a.f(a).exists()) {
      a.f(a).mkdirs();
    }
    return localFile;
  }
  
  public void a()
    throws IOException
  {
    a.a(a, this, true);
    d = true;
  }
  
  public void b()
    throws IOException
  {
    a.a(a, this, false);
  }
  
  public void c()
  {
    if (!d) {}
    try
    {
      b();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */