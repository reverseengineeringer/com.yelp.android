package com.yelp.android.dl;

import com.yelp.android.dg.a;
import rx.d.a;

class e
  implements a
{
  private final a a;
  private final d.a b;
  private final long c;
  
  public e(a parama, d.a parama1, long paramLong)
  {
    a = parama;
    b = parama1;
    c = paramLong;
  }
  
  public void call()
  {
    if (b.isUnsubscribed()) {}
    for (;;)
    {
      return;
      long l;
      if (c > b.a())
      {
        l = c - b.a();
        if (l <= 0L) {}
      }
      try
      {
        Thread.sleep(l);
        if (b.isUnsubscribed()) {
          continue;
        }
        a.call();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */