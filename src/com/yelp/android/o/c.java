package com.yelp.android.o;

import java.io.File;
import java.io.IOException;

public final class c
{
  private final d b;
  private final boolean[] c;
  private boolean d;
  
  private c(a parama, d paramd)
  {
    b = paramd;
    if (d.d(paramd)) {}
    for (parama = null;; parama = new boolean[a.e(parama)])
    {
      c = parama;
      return;
    }
  }
  
  public File a(int paramInt)
  {
    synchronized (a)
    {
      if (d.a(b) != this) {
        throw new IllegalStateException();
      }
    }
    if (!d.d(b)) {
      c[paramInt] = true;
    }
    File localFile = b.b(paramInt);
    if (!a.f(a).exists()) {
      a.f(a).mkdirs();
    }
    return localFile;
  }
  
  public void a()
  {
    a.a(a, this, true);
    d = true;
  }
  
  public void b()
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
 * Qualified Name:     com.yelp.android.o.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */