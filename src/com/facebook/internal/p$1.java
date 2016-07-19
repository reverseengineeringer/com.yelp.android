package com.facebook.internal;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

final class p$1
  implements Runnable
{
  public void run()
  {
    try
    {
      Iterator localIterator = p.c().iterator();
      while (localIterator.hasNext()) {
        p.c.a((p.c)localIterator.next(), true);
      }
    }
    finally
    {
      p.d().set(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.p.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */