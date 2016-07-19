package com.yelp.android.at;

public class b
  extends Thread
{
  private boolean a = false;
  private Object b;
  private a c;
  
  b(a parama)
  {
    c = parama;
    b = new Object();
  }
  
  private void a(long paramLong)
  {
    synchronized (b)
    {
      try
      {
        b.wait(paramLong);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
  
  boolean a()
  {
    return a;
  }
  
  void b()
  {
    synchronized (b)
    {
      b.notify();
      return;
    }
  }
  
  void c()
  {
    long l = c.a();
    if (l > 0L) {
      a(l);
    }
  }
  
  public void run()
  {
    while (!a())
    {
      c localc = c.b();
      if (localc != null)
      {
        localc.run();
        c.a(localc);
        if (localc.c()) {
          c.a(localc.e(), localc.d(), localc.c(), localc.d());
        }
      }
      else
      {
        c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.at.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */