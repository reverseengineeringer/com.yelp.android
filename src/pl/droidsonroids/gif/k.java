package pl.droidsonroids.gif;

import android.os.SystemClock;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class k
  extends l
{
  k(c paramc)
  {
    super(paramc);
  }
  
  public void a()
  {
    long l = c.f.a(c.e);
    if (l >= 0L)
    {
      c.c = (SystemClock.uptimeMillis() + l);
      if ((c.isVisible()) && (c.b) && (!c.h))
      {
        c.a.remove(this);
        c.j = c.a.schedule(this, l, TimeUnit.MILLISECONDS);
      }
      if ((!c.g.isEmpty()) && (c.f() == c.f.p() - 1)) {
        c.i.sendEmptyMessageAtTime(c.g(), c.c);
      }
    }
    for (;;)
    {
      if ((c.isVisible()) && (!c.i.hasMessages(-1))) {
        c.i.sendEmptyMessageAtTime(-1, 0L);
      }
      return;
      c.c = Long.MIN_VALUE;
      c.b = false;
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */