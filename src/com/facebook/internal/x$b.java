package com.facebook.internal;

class x$b
  implements x.a
{
  private final Runnable c;
  private b d;
  private b e;
  private boolean f;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  x$b(x paramx, Runnable paramRunnable)
  {
    c = paramRunnable;
  }
  
  b a(b paramb)
  {
    if ((!a) && (d == null)) {
      throw new AssertionError();
    }
    if ((!a) && (e == null)) {
      throw new AssertionError();
    }
    b localb = paramb;
    if (paramb == this) {
      if (d != this) {
        break label93;
      }
    }
    label93:
    for (localb = null;; localb = d)
    {
      d.e = e;
      e.d = d;
      e = null;
      d = null;
      return localb;
    }
  }
  
  b a(b paramb, boolean paramBoolean)
  {
    if ((!a) && (d != null)) {
      throw new AssertionError();
    }
    if ((!a) && (e != null)) {
      throw new AssertionError();
    }
    if (paramb == null)
    {
      e = this;
      d = this;
      paramb = this;
    }
    while (paramBoolean)
    {
      return this;
      d = paramb;
      e = e;
      b localb = d;
      e.d = this;
      e = this;
    }
    return paramb;
  }
  
  void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public boolean a()
  {
    synchronized (x.a(b))
    {
      if (!c())
      {
        x.b(b, a(x.b(b)));
        return true;
      }
      return false;
    }
  }
  
  public void b()
  {
    synchronized (x.a(b))
    {
      if (!c())
      {
        x.b(b, a(x.b(b)));
        x.b(b, a(x.b(b), true));
      }
      return;
    }
  }
  
  public boolean c()
  {
    return f;
  }
  
  Runnable d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.x.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */