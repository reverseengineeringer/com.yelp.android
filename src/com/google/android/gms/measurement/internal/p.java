package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;

abstract class p
{
  private static volatile Handler b;
  private final ag a;
  private final Runnable c;
  private volatile long d;
  private boolean e;
  
  p(ag paramag)
  {
    zzx.zzz(paramag);
    a = paramag;
    e = true;
    c = new Runnable()
    {
      public void run()
      {
        if (Looper.myLooper() == Looper.getMainLooper()) {
          p.a(p.this).h().a(this);
        }
        boolean bool;
        do
        {
          return;
          bool = b();
          p.a(p.this, 0L);
        } while ((!bool) || (!p.b(p.this)));
        a();
      }
    };
  }
  
  private Handler d()
  {
    if (b != null) {
      return b;
    }
    try
    {
      if (b == null) {
        b = new Handler(a.p().getMainLooper());
      }
      Handler localHandler = b;
      return localHandler;
    }
    finally {}
  }
  
  public abstract void a();
  
  public void a(long paramLong)
  {
    c();
    if (paramLong >= 0L)
    {
      d = a.q().a();
      if (!d().postDelayed(c, paramLong)) {
        a.f().b().a("Failed to schedule delayed post. time", Long.valueOf(paramLong));
      }
    }
  }
  
  public boolean b()
  {
    return d != 0L;
  }
  
  public void c()
  {
    d = 0L;
    d().removeCallbacks(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */