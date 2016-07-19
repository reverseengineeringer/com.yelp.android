package com.yelp.android.appdata;

import android.location.Location;
import android.util.Log;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;

final class p$a
{
  private final Map<String, PriorityQueue<Location>> a;
  private final Comparator<Location> b;
  
  public p$a(Comparator<Location> paramComparator)
  {
    b = Collections.reverseOrder(paramComparator);
    a = new HashMap(10);
  }
  
  public Location a()
  {
    PriorityQueue localPriorityQueue = new PriorityQueue(1, b);
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext())
    {
      Location localLocation = (Location)((PriorityQueue)localIterator.next()).peek();
      if (localLocation != null) {
        localPriorityQueue.add(localLocation);
      }
    }
    return (Location)localPriorityQueue.peek();
  }
  
  public void a(Location paramLocation)
  {
    if (paramLocation == null) {}
    PriorityQueue localPriorityQueue1;
    do
    {
      return;
      PriorityQueue localPriorityQueue2 = (PriorityQueue)a.get(paramLocation.getProvider());
      localPriorityQueue1 = localPriorityQueue2;
      if (localPriorityQueue2 == null)
      {
        localPriorityQueue1 = new PriorityQueue(10, b);
        a.put(paramLocation.getProvider(), localPriorityQueue1);
      }
      localPriorityQueue1.add(paramLocation);
    } while (localPriorityQueue1.size() <= 10);
    localPriorityQueue1.retainAll(Collections.singleton(localPriorityQueue1.peek()));
  }
  
  public void a(String paramString)
  {
    paramString = (PriorityQueue)a.get(paramString);
    if (paramString != null) {
      paramString.clear();
    }
  }
  
  public boolean b()
  {
    if (!a.isEmpty()) {}
    boolean bool1;
    Location localLocation;
    for (boolean bool2 = true;; bool2 = false)
    {
      bool1 = bool2;
      if (bool2)
      {
        localLocation = a();
        if (localLocation != null) {
          break;
        }
        bool1 = false;
      }
      return bool1;
    }
    long l1 = System.currentTimeMillis();
    long l2 = l1 - localLocation.getTime();
    if (l2 < 60000L) {}
    for (bool2 = true;; bool2 = false)
    {
      bool1 = bool2;
      if (l2 >= 0L) {
        break;
      }
      Log.w("LOCDEBUG", "Woah we went back in time, location is reporting " + new Date(localLocation.getTime()) + " And now is :" + new Date(l1));
      return bool2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */