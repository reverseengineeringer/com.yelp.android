package com.yelp.android.appdata;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

class au
  implements Runnable
{
  au(as paramas) {}
  
  public void run()
  {
    if (as.a(a).isEmpty())
    {
      as.a(a, SystemClock.elapsedRealtime());
      Iterator localIterator = as.b(a).iterator();
      while (localIterator.hasNext()) {
        ((ax)localIterator.next()).c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */