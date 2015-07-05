package com.comscore.analytics;

import com.comscore.applications.d;
import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.j;

class s
  implements Runnable
{
  s(a parama, boolean paramBoolean) {}
  
  public void run()
  {
    if ((a) && (!a.a(b)))
    {
      a.a(b, true);
      b.q(a.b(b));
      b.a();
      b.q().a();
      b.u().a(3000);
    }
    while ((a) || (!a.a(b))) {
      return;
    }
    a.a(b, false);
    a.b(b, b.af);
    if (Thread.getDefaultUncaughtExceptionHandler() != b.ag) {
      Thread.setDefaultUncaughtExceptionHandler(b.ag);
    }
    b.q().b();
    b.u().d();
    b.p().e();
    b.f.c();
  }
}

/* Location:
 * Qualified Name:     com.comscore.analytics.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */