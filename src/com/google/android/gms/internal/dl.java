package com.google.android.gms.internal;

@fv
public final class dl
  extends du.a
{
  private final Object a = new Object();
  private dn.a b;
  private dk c;
  
  public void a()
  {
    synchronized (a)
    {
      if (c != null) {
        c.t();
      }
      return;
    }
  }
  
  public void a(int paramInt)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (b != null)
        {
          if (paramInt == 3)
          {
            paramInt = 1;
            b.a(paramInt);
            b = null;
          }
        }
        else {
          return;
        }
      }
      paramInt = 2;
    }
  }
  
  public void a(dk paramdk)
  {
    synchronized (a)
    {
      c = paramdk;
      return;
    }
  }
  
  public void a(dn.a parama)
  {
    synchronized (a)
    {
      b = parama;
      return;
    }
  }
  
  public void a(dw paramdw)
  {
    synchronized (a)
    {
      if (b != null)
      {
        b.a(0, paramdw);
        b = null;
        return;
      }
      if (c != null) {
        c.x();
      }
      return;
    }
  }
  
  public void b()
  {
    synchronized (a)
    {
      if (c != null) {
        c.u();
      }
      return;
    }
  }
  
  public void c()
  {
    synchronized (a)
    {
      if (c != null) {
        c.v();
      }
      return;
    }
  }
  
  public void d()
  {
    synchronized (a)
    {
      if (c != null) {
        c.w();
      }
      return;
    }
  }
  
  public void e()
  {
    synchronized (a)
    {
      if (b != null)
      {
        b.a(0);
        b = null;
        return;
      }
      if (c != null) {
        c.x();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */