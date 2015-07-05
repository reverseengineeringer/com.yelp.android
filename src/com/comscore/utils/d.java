package com.comscore.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import com.comscore.analytics.a;

public class d
  implements Runnable
{
  protected a a;
  protected Handler b;
  protected boolean c;
  protected long d = -1L;
  
  public d(a parama)
  {
    a = parama;
  }
  
  public void a()
  {
    try
    {
      c.a(this, "start()");
      c = true;
      if ((b == null) && (a.af() > 0L) && (a.aa() != null))
      {
        f();
        c();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void a(long paramLong)
  {
    d = paramLong;
    a.r().a("plannedFlushTime", Long.toString(paramLong, 10));
  }
  
  protected void b()
  {
    if (a.r().a("plannedFlushTime").booleanValue()) {}
    try
    {
      d = Long.parseLong(a.r().b("plannedFlushTime"), 10);
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void c()
  {
    if (d < 0L) {
      a(SystemClock.uptimeMillis() + a.af() * 1000L);
    }
    b.postAtTime(this, d);
  }
  
  public void d()
  {
    for (;;)
    {
      try
      {
        if ((a.af() > 0L) && (a.aa() != null))
        {
          if ((b == null) && (c))
          {
            a(-1L);
            a();
            return;
          }
          if (b == null) {
            continue;
          }
          e();
          continue;
        }
        a(-1L);
      }
      finally {}
      g();
    }
  }
  
  /* Error */
  protected void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/comscore/utils/d:a	Lcom/comscore/analytics/a;
    //   6: invokevirtual 43	com/comscore/analytics/a:af	()J
    //   9: lconst_0
    //   10: lcmp
    //   11: ifle +46 -> 57
    //   14: invokestatic 93	android/os/SystemClock:uptimeMillis	()J
    //   17: aload_0
    //   18: getfield 25	com/comscore/utils/d:a	Lcom/comscore/analytics/a;
    //   21: invokevirtual 43	com/comscore/analytics/a:af	()J
    //   24: ldc2_w 94
    //   27: lmul
    //   28: ladd
    //   29: lstore_1
    //   30: aload_0
    //   31: lload_1
    //   32: invokevirtual 97	com/comscore/utils/d:a	(J)V
    //   35: aload_0
    //   36: getfield 37	com/comscore/utils/d:b	Landroid/os/Handler;
    //   39: ifnull +15 -> 54
    //   42: aload_0
    //   43: getfield 37	com/comscore/utils/d:b	Landroid/os/Handler;
    //   46: aload_0
    //   47: invokevirtual 115	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   50: aload_0
    //   51: invokevirtual 52	com/comscore/utils/d:c	()V
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: ldc2_w 20
    //   60: lstore_1
    //   61: goto -31 -> 30
    //   64: astore_3
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_3
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	d
    //   29	32	1	l	long
    //   64	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	64	finally
    //   30	54	64	finally
  }
  
  protected void f()
  {
    HandlerThread localHandlerThread = new HandlerThread("CacheFlusher");
    localHandlerThread.start();
    b = new Handler(localHandlerThread.getLooper());
    b();
  }
  
  protected void g()
  {
    if (b != null)
    {
      b.getLooper().quit();
      b = null;
    }
  }
  
  public void h()
  {
    try
    {
      c.a(this, "stop()");
      c = false;
      g();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void run()
  {
    try
    {
      c.a(this, "run(): Flushing the cache");
      a.r(false);
      a(-1L);
      c();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */