package com.yelp.android.ag;

import com.yelp.android.ao.h;
import com.yelp.android.u.a;
import com.yelp.android.u.a.a;
import java.util.Queue;

class i$a
{
  private final Queue<a> a = h.a(0);
  
  public a a(a.a parama)
  {
    try
    {
      a locala2 = (a)a.poll();
      a locala1 = locala2;
      if (locala2 == null) {
        locala1 = new a(parama);
      }
      return locala1;
    }
    finally {}
  }
  
  public void a(a parama)
  {
    try
    {
      parama.g();
      a.offer(parama);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */