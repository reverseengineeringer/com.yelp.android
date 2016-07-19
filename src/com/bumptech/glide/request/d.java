package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.yelp.android.al.c;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class d<T, R>
  implements a<R>, Runnable
{
  private static final a a = new a();
  private final Handler b;
  private final int c;
  private final int d;
  private final boolean e;
  private final a f;
  private R g;
  private b h;
  private boolean i;
  private Exception j;
  private boolean k;
  private boolean l;
  
  public d(Handler paramHandler, int paramInt1, int paramInt2)
  {
    this(paramHandler, paramInt1, paramInt2, true, a);
  }
  
  d(Handler paramHandler, int paramInt1, int paramInt2, boolean paramBoolean, a parama)
  {
    b = paramHandler;
    c = paramInt1;
    d = paramInt2;
    e = paramBoolean;
    f = parama;
  }
  
  private R a(Long paramLong)
    throws ExecutionException, InterruptedException, TimeoutException
  {
    try
    {
      if (e) {
        com.yelp.android.ao.h.b();
      }
      if (i) {
        throw new CancellationException();
      }
    }
    finally {}
    if (l) {
      throw new ExecutionException(j);
    }
    if (k) {}
    for (paramLong = g;; paramLong = g)
    {
      return paramLong;
      if (paramLong == null) {
        f.a(this, 0L);
      }
      while (Thread.interrupted())
      {
        throw new InterruptedException();
        if (paramLong.longValue() > 0L) {
          f.a(this, paramLong.longValue());
        }
      }
      if (l) {
        throw new ExecutionException(j);
      }
      if (i) {
        throw new CancellationException();
      }
      if (!k) {
        throw new TimeoutException();
      }
    }
  }
  
  public b a()
  {
    return h;
  }
  
  public void a(Drawable paramDrawable) {}
  
  public void a(b paramb)
  {
    h = paramb;
  }
  
  public void a(com.yelp.android.am.h paramh)
  {
    paramh.a(c, d);
  }
  
  public void a(Exception paramException, Drawable paramDrawable)
  {
    try
    {
      l = true;
      j = paramException;
      f.a(this);
      return;
    }
    finally
    {
      paramException = finally;
      throw paramException;
    }
  }
  
  public void a(R paramR, c<? super R> paramc)
  {
    try
    {
      k = true;
      g = paramR;
      f.a(this);
      return;
    }
    finally
    {
      paramR = finally;
      throw paramR;
    }
  }
  
  public void b()
  {
    b.post(this);
  }
  
  public void b(Drawable paramDrawable) {}
  
  public boolean cancel(boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    for (;;)
    {
      try
      {
        boolean bool3 = i;
        if (bool3) {
          return bool2;
        }
        if (!isDone())
        {
          bool2 = bool1;
          if (bool1)
          {
            i = true;
            if (paramBoolean) {
              b();
            }
            f.a(this);
            bool2 = bool1;
          }
        }
        else
        {
          bool1 = false;
        }
      }
      finally {}
    }
  }
  
  public void d() {}
  
  public void e() {}
  
  public void f() {}
  
  public R get()
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = a(null);
      return (R)localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new AssertionError(localTimeoutException);
    }
  }
  
  public R get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return (R)a(Long.valueOf(paramTimeUnit.toMillis(paramLong)));
  }
  
  public boolean isCancelled()
  {
    try
    {
      boolean bool = i;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isDone()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/bumptech/glide/request/d:i	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 79	com/bumptech/glide/request/d:k	Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifeq +9 -> 24
    //   18: iconst_1
    //   19: istore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_1
    //   23: ireturn
    //   24: iconst_0
    //   25: istore_1
    //   26: goto -6 -> 20
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	d
    //   13	13	1	bool	boolean
    //   29	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
  }
  
  public void run()
  {
    if (h != null)
    {
      h.d();
      cancel(false);
    }
  }
  
  static class a
  {
    public void a(Object paramObject)
    {
      paramObject.notifyAll();
    }
    
    public void a(Object paramObject, long paramLong)
      throws InterruptedException
    {
      paramObject.wait(paramLong);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.request.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */