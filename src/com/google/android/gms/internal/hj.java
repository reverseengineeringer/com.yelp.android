package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.zzx;

@fv
public class hj
{
  private HandlerThread a = null;
  private Handler b = null;
  private int c = 0;
  private final Object d = new Object();
  
  public Looper a()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (c == 0)
        {
          if (a == null)
          {
            gz.e("Starting the looper thread.");
            a = new HandlerThread("LooperProvider");
            a.start();
            b = new Handler(a.getLooper());
            gz.e("Looper thread started.");
            c += 1;
            Looper localLooper = a.getLooper();
            return localLooper;
          }
          gz.e("Resuming the looper thread");
          d.notifyAll();
        }
      }
      zzx.zzb(a, "Invalid state: mHandlerThread should already been initialized.");
    }
  }
  
  public void b()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (c > 0)
        {
          bool = true;
          zzx.zzb(bool, "Invalid state: release() called more times than expected.");
          int i = c - 1;
          c = i;
          if (i == 0) {
            b.post(new Runnable()
            {
              public void run()
              {
                synchronized (hj.a(hj.this))
                {
                  gz.e("Suspending the looper thread");
                  for (;;)
                  {
                    int i = hj.b(hj.this);
                    if (i == 0) {
                      try
                      {
                        hj.a(hj.this).wait();
                        gz.e("Looper thread resumed");
                      }
                      catch (InterruptedException localInterruptedException)
                      {
                        gz.e("Looper thread interrupted.");
                      }
                    }
                  }
                }
              }
            });
          }
          return;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */