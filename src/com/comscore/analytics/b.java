package com.comscore.analytics;

public class b
  implements Runnable
{
  public b(a parama) {}
  
  public void run()
  {
    synchronized (a)
    {
      if (!a.a(a)) {
        return;
      }
      if (a.X != null)
      {
        a.f.b(a.X);
        a.X = null;
        a.x();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.analytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */