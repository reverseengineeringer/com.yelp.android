package com.google.android.gms.internal;

import java.io.IOException;

public abstract class ll<M extends ll<M>>
  extends lq
{
  protected ln m;
  
  public void a(zzsn paramzzsn)
    throws IOException
  {
    if (m == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < m.a())
      {
        m.b(i).a(paramzzsn);
        i += 1;
      }
    }
  }
  
  protected final boolean a(lk paramlk, int paramInt)
    throws IOException
  {
    int i = paramlk.q();
    if (!paramlk.b(paramInt)) {
      return false;
    }
    int j = lt.b(paramInt);
    ls localls = new ls(paramInt, paramlk.a(i, paramlk.q() - i));
    paramlk = null;
    if (m == null) {
      m = new ln();
    }
    for (;;)
    {
      Object localObject = paramlk;
      if (paramlk == null)
      {
        localObject = new lo();
        m.a(j, (lo)localObject);
      }
      ((lo)localObject).a(localls);
      return true;
      paramlk = m.a(j);
    }
  }
  
  protected int b()
  {
    int j = 0;
    if (m != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= m.a()) {
          break;
        }
        i += m.b(j).a();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  public M d()
    throws CloneNotSupportedException
  {
    ll localll = (ll)super.e();
    lp.a(this, localll);
    return localll;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ll
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */