package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.t.e;

class EngineRunnable
  implements e, Runnable
{
  private final Priority a;
  private final r b;
  private final a<?, ?, ?> c;
  private EngineRunnable.Stage d;
  private volatile boolean e;
  
  public EngineRunnable(r paramr, a<?, ?, ?> parama, Priority paramPriority)
  {
    b = paramr;
    c = parama;
    d = EngineRunnable.Stage.CACHE;
    a = paramPriority;
  }
  
  private void a(t paramt)
  {
    b.a(paramt);
  }
  
  private void a(Exception paramException)
  {
    if (c())
    {
      d = EngineRunnable.Stage.SOURCE;
      b.b(this);
      return;
    }
    b.a(paramException);
  }
  
  private boolean c()
  {
    return d == EngineRunnable.Stage.CACHE;
  }
  
  private t<?> d()
  {
    if (c()) {
      return e();
    }
    return f();
  }
  
  private t<?> e()
  {
    try
    {
      t localt1 = c.a();
      t localt2 = localt1;
      if (localt1 == null) {
        localt2 = c.b();
      }
      return localt2;
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
  
  private t<?> f()
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
        localt = d();
        if (e)
        {
          if (localt == null) {
            continue;
          }
          localt.d();
        }
      }
      catch (Exception localException)
      {
        t localt;
        for (;;)
        {
          if (Log.isLoggable("EngineRunnable", 2)) {
            Log.v("EngineRunnable", "Exception decoding", localException);
          }
          localt = null;
        }
        if (localt == null)
        {
          a(localException);
          return;
        }
        a(localt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.EngineRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */