package com.google.android.gms.analytics.internal;

import android.os.Looper;
import com.google.android.gms.measurement.h;

class af$1
  implements Runnable
{
  af$1(af paramaf) {}
  
  public void run()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      af.a(a).h().a(this);
    }
    boolean bool;
    do
    {
      return;
      bool = a.c();
      af.a(a, 0L);
    } while ((!bool) || (af.b(a)));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.af.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */