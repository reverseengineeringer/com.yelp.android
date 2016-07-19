package com.yelp.android.y;

import java.util.ArrayDeque;
import java.util.Queue;

class c$b
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

/* Location:
 * Qualified Name:     com.yelp.android.y.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */