package com.yelp.android.ab;

import com.yelp.android.ai.f;
import com.yelp.android.p.a;
import com.yelp.android.p.b;
import java.util.Queue;

class p
{
  private final Queue<a> a = f.a(0);
  
  public a a(b paramb)
  {
    try
    {
      a locala2 = (a)a.poll();
      a locala1 = locala2;
      if (locala2 == null) {
        locala1 = new a(paramb);
      }
      return locala1;
    }
    finally {}
  }
  
  public void a(a parama)
  {
    try
    {
      parama.h();
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
 * Qualified Name:     com.yelp.android.ab.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */