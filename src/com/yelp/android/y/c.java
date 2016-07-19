package com.yelp.android.y;

import com.bumptech.glide.load.b;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c
{
  private final Map<b, a> a = new HashMap();
  private final b b = new b(null);
  
  void a(b paramb)
  {
    try
    {
      a locala2 = (a)a.get(paramb);
      a locala1 = locala2;
      if (locala2 == null)
      {
        locala1 = b.a();
        a.put(paramb, locala1);
      }
      b += 1;
      a.lock();
      return;
    }
    finally {}
  }
  
  void b(b paramb)
  {
    a locala1;
    for (;;)
    {
      try
      {
        locala1 = (a)a.get(paramb);
        if ((locala1 != null) && (b > 0)) {
          break;
        }
        paramb = new StringBuilder().append("Cannot release a lock that is not held, key: ").append(paramb).append(", interestedThreads: ");
        if (locala1 == null)
        {
          i = 0;
          throw new IllegalArgumentException(i);
        }
      }
      finally {}
      i = b;
    }
    int i = b - 1;
    b = i;
    if (i == 0)
    {
      a locala2 = (a)a.remove(paramb);
      if (!locala2.equals(locala1)) {
        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + locala1 + ", but actually removed: " + locala2 + ", key: " + paramb);
      }
      b.a(locala2);
    }
    a.unlock();
  }
  
  private static class a
  {
    final Lock a = new ReentrantLock();
    int b;
  }
  
  private static class b
  {
    private final Queue<c.a> a = new ArrayDeque();
    
    c.a a()
    {
      synchronized (a)
      {
        c.a locala = (c.a)a.poll();
        ??? = locala;
        if (locala == null) {
          ??? = new c.a(null);
        }
        return (c.a)???;
      }
    }
    
    void a(c.a parama)
    {
      synchronized (a)
      {
        if (a.size() < 10) {
          a.offer(parama);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */