package com.yelp.android.appdata;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

class p$2
  implements Runnable
{
  p$2(p paramp) {}
  
  public void run()
  {
    if (p.a(a).isEmpty())
    {
      p.a(a, SystemClock.elapsedRealtime());
      Iterator localIterator = p.b(a).iterator();
      while (localIterator.hasNext()) {
        ((p.c)localIterator.next()).c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */