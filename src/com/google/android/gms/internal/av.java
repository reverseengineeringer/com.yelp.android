package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

public class av
  extends Thread
{
  private static final boolean a = li.b;
  private final BlockingQueue<zzk<?>> b;
  private final BlockingQueue<zzk<?>> c;
  private final u d;
  private final ka e;
  private volatile boolean f = false;
  
  public av(BlockingQueue<zzk<?>> paramBlockingQueue1, BlockingQueue<zzk<?>> paramBlockingQueue2, u paramu, ka paramka)
  {
    b = paramBlockingQueue1;
    c = paramBlockingQueue2;
    d = paramu;
    e = paramka;
  }
  
  public void a()
  {
    f = true;
    interrupt();
  }
  
  public void run()
  {
    if (a) {
      li.a("start new dispatcher", new Object[0]);
    }
    Process.setThreadPriority(10);
    d.a();
    for (;;)
    {
      try
      {
        zzk localzzk = (zzk)b.take();
        localzzk.b("cache-queue-take");
        if (!localzzk.g()) {
          break label73;
        }
        localzzk.c("cache-discard-canceled");
        continue;
        if (!f) {
          continue;
        }
      }
      catch (InterruptedException localInterruptedException) {}
      return;
      label73:
      u.a locala = d.a(localInterruptedException.e());
      if (locala == null)
      {
        localInterruptedException.b("cache-miss");
        c.put(localInterruptedException);
      }
      else if (locala.a())
      {
        localInterruptedException.b("cache-hit-expired");
        localInterruptedException.a(locala);
        c.put(localInterruptedException);
      }
      else
      {
        localInterruptedException.b("cache-hit");
        jc localjc = localInterruptedException.a(new gm(a, g));
        localInterruptedException.b("cache-hit-parsed");
        if (!locala.b())
        {
          e.a(localInterruptedException, localjc);
        }
        else
        {
          localInterruptedException.b("cache-hit-refresh-needed");
          localInterruptedException.a(locala);
          d = true;
          e.a(localInterruptedException, localjc, new Runnable()
          {
            public void run()
            {
              try
              {
                av.a(av.this).put(localInterruptedException);
                return;
              }
              catch (InterruptedException localInterruptedException) {}
            }
          });
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */