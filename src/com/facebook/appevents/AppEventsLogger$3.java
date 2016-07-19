package com.facebook.appevents;

import com.facebook.internal.u;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class AppEventsLogger$3
  implements Runnable
{
  public void run()
  {
    HashSet localHashSet = new HashSet();
    synchronized (AppEventsLogger.b())
    {
      Iterator localIterator = AppEventsLogger.c().keySet().iterator();
      if (localIterator.hasNext()) {
        localHashSet.add(((AppEventsLogger.AccessTokenAppIdPair)localIterator.next()).getApplicationId());
      }
    }
    ??? = ((Set)localObject2).iterator();
    while (((Iterator)???).hasNext()) {
      u.a((String)((Iterator)???).next(), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */