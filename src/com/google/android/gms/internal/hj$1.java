package com.google.android.gms.internal;

class hj$1
  implements Runnable
{
  hj$1(hj paramhj) {}
  
  public void run()
  {
    synchronized (hj.a(a))
    {
      gz.e("Suspending the looper thread");
      for (;;)
      {
        int i = hj.b(a);
        if (i == 0) {
          try
          {
            hj.a(a).wait();
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */