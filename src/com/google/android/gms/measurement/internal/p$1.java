package com.google.android.gms.measurement.internal;

import android.os.Looper;

class p$1
  implements Runnable
{
  p$1(p paramp) {}
  
  public void run()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      p.a(a).h().a(this);
    }
    boolean bool;
    do
    {
      return;
      bool = a.b();
      p.a(a, 0L);
    } while ((!bool) || (!p.b(a)));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.p.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */