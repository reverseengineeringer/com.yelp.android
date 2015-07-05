package com.google.android.gms.internal;

import java.util.concurrent.Future;

@ey
public final class fs
{
  private final Object mH = new Object();
  gu mo;
  private String uE;
  private gj<fu> uF = new gj();
  public final cd uG = new fs.1(this);
  public final cd uH = new fs.2(this);
  
  public fs(String paramString)
  {
    uE = paramString;
  }
  
  public void b(gu paramgu)
  {
    jx.aU("setAdWebView must be called on the main thread.");
    mo = paramgu;
  }
  
  public Future<fu> cR()
  {
    return uF;
  }
  
  public void cS()
  {
    jx.aU("destroyAdWebView must be called on the main thread.");
    if (mo != null)
    {
      mo.destroy();
      mo = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */