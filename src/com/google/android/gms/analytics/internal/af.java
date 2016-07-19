package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.measurement.h;

abstract class af
{
  private static volatile Handler b;
  private final t a;
  private final Runnable c;
  private volatile long d;
  private boolean e;
  
  af(t paramt)
  {
    zzx.zzz(paramt);
    a = paramt;
    c = new Runnable()
    {
      public void run()
      {
        if (Looper.myLooper() == Looper.getMainLooper()) {
          af.a(af.this).h().a(this);
        }
        boolean bool;
        do
        {
          return;
          bool = c();
          af.a(af.this, 0L);
        } while ((!bool) || (af.b(af.this)));
        a();
      }
    };
  }
  
  private Handler e()
  {
    if (b != null) {
      return b;
    }
    try
    {
      if (b == null) {
        b = new Handler(a.b().getMainLooper());
      }
      Handler localHandler = b;
      return localHandler;
    }
    finally {}
  }
  
  public abstract void a();
  
  public void a(long paramLong)
  {
    d();
    if (paramLong >= 0L)
    {
      d = a.d().a();
      if (!e().postDelayed(c, paramLong)) {
        a.f().e("Failed to schedule delayed post. time", Long.valueOf(paramLong));
      }
    }
  }
  
  public long b()
  {
    if (d == 0L) {
      return 0L;
    }
    return Math.abs(a.d().a() - d);
  }
  
  public void b(long paramLong)
  {
    long l = 0L;
    if (!c()) {
      return;
    }
    if (paramLong < 0L)
    {
      d();
      return;
    }
    paramLong -= Math.abs(a.d().a() - d);
    if (paramLong < 0L) {
      paramLong = l;
    }
    for (;;)
    {
      e().removeCallbacks(c);
      if (e().postDelayed(c, paramLong)) {
        break;
      }
      a.f().e("Failed to adjust delayed post. time", Long.valueOf(paramLong));
      return;
    }
  }
  
  public boolean c()
  {
    return d != 0L;
  }
  
  public void d()
  {
    d = 0L;
    e().removeCallbacks(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */