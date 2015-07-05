package com.google.android.gms.analytics;

import com.google.android.gms.internal.ld;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class w$b
  extends TimerTask
{
  private w$b(w paramw) {}
  
  public void run()
  {
    if ((w.b(zv) == w.a.zy) && (w.e(zv).isEmpty()) && (w.f(zv) + w.g(zv) < w.h(zv).elapsedRealtime()))
    {
      ae.V("Disconnecting due to inactivity");
      w.i(zv);
      return;
    }
    w.j(zv).schedule(new b(zv), w.g(zv));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.w.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */