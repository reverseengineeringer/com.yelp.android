package com.google.android.gms.internal;

import java.util.concurrent.Future;

@fv
public abstract class gy
  implements hf<Future>
{
  private final Runnable a = new Runnable()
  {
    public final void run()
    {
      gy.a(gy.this, Thread.currentThread());
      a();
    }
  };
  private volatile Thread b;
  private boolean c;
  
  public gy()
  {
    c = false;
  }
  
  public gy(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public abstract void a();
  
  public abstract void b();
  
  public final void d()
  {
    b();
    if (b != null) {
      b.interrupt();
    }
  }
  
  public final Future g()
  {
    if (c) {
      return hc.a(1, a);
    }
    return hc.a(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */