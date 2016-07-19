package com.facebook.internal;

import com.facebook.g;
import java.util.concurrent.Executor;

public class x
{
  private final Object b = new Object();
  private b c;
  private final int d;
  private final Executor e;
  private b f = null;
  private int g = 0;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public x()
  {
    this(8);
  }
  
  public x(int paramInt)
  {
    this(paramInt, g.d());
  }
  
  public x(int paramInt, Executor paramExecutor)
  {
    d = paramInt;
    e = paramExecutor;
  }
  
  private void a()
  {
    a(null);
  }
  
  private void a(b paramb)
  {
    b localb = null;
    Object localObject = b;
    if (paramb != null) {}
    try
    {
      f = paramb.a(f);
      g -= 1;
      paramb = localb;
      if (g < d)
      {
        localb = c;
        paramb = localb;
        if (localb != null)
        {
          c = localb.a(c);
          f = localb.a(f, false);
          g += 1;
          localb.a(true);
          paramb = localb;
        }
      }
      if (paramb != null) {
        b(paramb);
      }
      return;
    }
    finally {}
  }
  
  private void b(final b paramb)
  {
    e.execute(new Runnable()
    {
      public void run()
      {
        try
        {
          paramb.d().run();
          return;
        }
        finally
        {
          x.a(x.this, paramb);
        }
      }
    });
  }
  
  public a a(Runnable paramRunnable)
  {
    return a(paramRunnable, true);
  }
  
  public a a(Runnable arg1, boolean paramBoolean)
  {
    b localb = new b(???);
    synchronized (b)
    {
      c = localb.a(c, paramBoolean);
      a();
      return localb;
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean a();
    
    public abstract void b();
  }
  
  private class b
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
    
    b(Runnable paramRunnable)
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
      synchronized (x.a(x.this))
      {
        if (!c())
        {
          x.b(x.this, a(x.b(x.this)));
          return true;
        }
        return false;
      }
    }
    
    public void b()
    {
      synchronized (x.a(x.this))
      {
        if (!c())
        {
          x.b(x.this, a(x.b(x.this)));
          x.b(x.this, a(x.b(x.this), true));
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
}

/* Location:
 * Qualified Name:     com.facebook.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */