package com.yelp.android.ct;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class b<T>
  implements i<T>
{
  protected final Context c;
  protected final d<T> d;
  final ScheduledExecutorService e;
  final AtomicReference<ScheduledFuture<?>> f;
  volatile int g = -1;
  
  public b(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, d<T> paramd)
  {
    c = paramContext;
    e = paramScheduledExecutorService;
    d = paramd;
    f = new AtomicReference();
  }
  
  protected void a(int paramInt)
  {
    g = paramInt;
    a(0L, g);
  }
  
  void a(long paramLong1, long paramLong2)
  {
    if (f.get() == null) {}
    for (int i = 1;; i = 0)
    {
      n localn;
      if (i != 0)
      {
        localn = new n(c, this);
        CommonUtils.a(c, "Scheduling time based file roll over every " + paramLong2 + " seconds");
      }
      try
      {
        f.set(e.scheduleAtFixedRate(localn, paramLong1, paramLong2, TimeUnit.SECONDS));
        return;
      }
      catch (RejectedExecutionException localRejectedExecutionException)
      {
        CommonUtils.a(c, "Failed to schedule time based file roll over", localRejectedExecutionException);
      }
    }
  }
  
  public void a(T paramT)
  {
    CommonUtils.a(c, paramT.toString());
    try
    {
      d.a(paramT);
      f();
      return;
    }
    catch (IOException paramT)
    {
      for (;;)
      {
        CommonUtils.a(c, "Failed to write event.", paramT);
      }
    }
  }
  
  public void b()
  {
    g();
  }
  
  public void c()
  {
    d.f();
  }
  
  public void d()
  {
    if (f.get() != null)
    {
      CommonUtils.a(c, "Cancelling time-based rollover because no events are currently being generated.");
      ((ScheduledFuture)f.get()).cancel(false);
      f.set(null);
    }
  }
  
  public boolean e()
  {
    try
    {
      boolean bool = d.d();
      return bool;
    }
    catch (IOException localIOException)
    {
      CommonUtils.a(c, "Failed to roll file over.", localIOException);
    }
    return false;
  }
  
  public void f()
  {
    if (g != -1) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        a(g, g);
      }
      return;
    }
  }
  
  void g()
  {
    k localk = a();
    if (localk == null)
    {
      CommonUtils.a(c, "skipping files send because we don't yet know the target endpoint");
      return;
    }
    CommonUtils.a(c, "Sending all files");
    List localList = d.e();
    int i = 0;
    int j = i;
    int k = i;
    for (;;)
    {
      try
      {
        if (localList.size() > 0)
        {
          k = i;
          CommonUtils.a(c, String.format(Locale.US, "attempt to send batch of %d files", new Object[] { Integer.valueOf(localList.size()) }));
          k = i;
          bool = localk.a(localList);
          j = i;
          if (bool)
          {
            k = i;
            j = localList.size();
            i = j + i;
          }
        }
      }
      catch (Exception localException1)
      {
        try
        {
          boolean bool;
          d.a(localList);
          j = i;
          if (!bool)
          {
            if (j != 0) {
              break;
            }
            d.g();
            return;
          }
          k = j;
          localList = d.e();
          i = j;
        }
        catch (Exception localException2)
        {
          for (;;) {}
        }
        localException1 = localException1;
        i = k;
      }
      CommonUtils.a(c, "Failed to send batch of analytics files to server: " + localException1.getMessage(), localException1);
      j = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */