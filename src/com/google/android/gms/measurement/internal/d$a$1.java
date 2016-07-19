package com.google.android.gms.measurement.internal;

class d$a$1
  implements Runnable
{
  d$a$1(d.a parama, w paramw) {}
  
  public void run()
  {
    synchronized (b)
    {
      d.a.a(b, false);
      if (!b.a.b())
      {
        b.a.s().z().a("Connected to service");
        d.a(b.a, a);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */