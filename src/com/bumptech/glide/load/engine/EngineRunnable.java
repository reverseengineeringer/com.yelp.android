package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.f;

class EngineRunnable
  implements com.bumptech.glide.load.engine.executor.a, Runnable
{
  private final Priority a;
  private final a b;
  private final a<?, ?, ?> c;
  private Stage d;
  private volatile boolean e;
  
  public EngineRunnable(a parama, a<?, ?, ?> parama1, Priority paramPriority)
  {
    b = parama;
    c = parama1;
    d = Stage.CACHE;
    a = paramPriority;
  }
  
  private void a(i parami)
  {
    b.a(parami);
  }
  
  private void a(Exception paramException)
  {
    if (c())
    {
      d = Stage.SOURCE;
      b.b(this);
      return;
    }
    b.a(paramException);
  }
  
  private boolean c()
  {
    return d == Stage.CACHE;
  }
  
  private i<?> d()
    throws Exception
  {
    if (c()) {
      return e();
    }
    return f();
  }
  
  private i<?> e()
    throws Exception
  {
    try
    {
      i locali1 = c.a();
      i locali2 = locali1;
      if (locali1 == null) {
        locali2 = c.b();
      }
      return locali2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (Log.isLoggable("EngineRunnable", 3)) {
          Log.d("EngineRunnable", "Exception decoding result from cache: " + localException);
        }
        Object localObject = null;
      }
    }
  }
  
  private i<?> f()
    throws Exception
  {
    return c.c();
  }
  
  public void a()
  {
    e = true;
    c.d();
  }
  
  public int b()
  {
    return a.ordinal();
  }
  
  public void run()
  {
    Object localObject = null;
    if (e) {}
    for (;;)
    {
      return;
      try
      {
        locali = d();
        if (e)
        {
          if (locali == null) {
            continue;
          }
          locali.d();
        }
      }
      catch (Exception localException)
      {
        i locali;
        for (;;)
        {
          if (Log.isLoggable("EngineRunnable", 2)) {
            Log.v("EngineRunnable", "Exception decoding", localException);
          }
          locali = null;
        }
        if (locali == null)
        {
          a(localException);
          return;
        }
        a(locali);
      }
    }
  }
  
  private static enum Stage
  {
    CACHE,  SOURCE;
    
    private Stage() {}
  }
  
  static abstract interface a
    extends f
  {
    public abstract void b(EngineRunnable paramEngineRunnable);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.EngineRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */