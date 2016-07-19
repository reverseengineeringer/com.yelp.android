package com.google.android.gms.internal;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

class hi$b<T>
  extends zzk<InputStream>
{
  private final hi.a<T> a;
  private final jc.b<T> b;
  
  public hi$b(String paramString, final hi.a<T> parama, jc.b<T> paramb)
  {
    super(0, paramString, new jc.a()
    {
      public void a(zzr paramAnonymouszzr)
      {
        a(parama.b());
      }
    });
    a = parama;
    b = paramb;
  }
  
  protected jc<InputStream> a(gm paramgm)
  {
    return jc.a(new ByteArrayInputStream(b), lz.a(paramgm));
  }
  
  protected void a(InputStream paramInputStream)
  {
    b.a(a.b(paramInputStream));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hi.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */