package com.google.android.gms.analytics.internal;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.analytics.c;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;
import com.google.android.gms.measurement.h;

public class t
{
  private static t a;
  private final Context b;
  private final Context c;
  private final jt d;
  private final ad e;
  private final g f;
  private final h g;
  private final p h;
  private final ah i;
  private final o j;
  private final j k;
  private final c l;
  private final aa m;
  private final a n;
  private final y o;
  private final ag p;
  
  protected t(u paramu)
  {
    Object localObject1 = paramu.a();
    zzx.zzb(localObject1, "Application context can't be null");
    zzx.zzb(localObject1 instanceof Application, "getApplicationContext didn't return the application");
    Object localObject2 = paramu.b();
    zzx.zzz(localObject2);
    b = ((Context)localObject1);
    c = ((Context)localObject2);
    d = paramu.h(this);
    e = paramu.g(this);
    localObject2 = paramu.f(this);
    ((g)localObject2).E();
    f = ((g)localObject2);
    if (e().a()) {
      f().d("Google Analytics " + s.a + " is starting up.");
    }
    for (;;)
    {
      localObject2 = paramu.q(this);
      ((j)localObject2).E();
      k = ((j)localObject2);
      localObject2 = paramu.e(this);
      ((o)localObject2).E();
      j = ((o)localObject2);
      localObject2 = paramu.l(this);
      aa localaa = paramu.d(this);
      a locala = paramu.c(this);
      y localy = paramu.b(this);
      ag localag = paramu.a(this);
      localObject1 = paramu.a((Context)localObject1);
      ((h)localObject1).a(a());
      g = ((h)localObject1);
      localObject1 = paramu.i(this);
      localaa.E();
      m = localaa;
      locala.E();
      n = locala;
      localy.E();
      o = localy;
      localag.E();
      p = localag;
      paramu = paramu.p(this);
      paramu.E();
      i = paramu;
      ((p)localObject2).E();
      h = ((p)localObject2);
      if (e().a()) {
        f().b("Device AnalyticsService version", s.a);
      }
      ((c)localObject1).a();
      l = ((c)localObject1);
      ((p)localObject2).b();
      return;
      f().d("Google Analytics " + s.a + " is starting up. " + "To enable debug logging on a device run:\n" + "  adb shell setprop log.tag.GAv4 DEBUG\n" + "  adb logcat -s GAv4");
    }
  }
  
  public static t a(Context paramContext)
  {
    zzx.zzz(paramContext);
    if (a == null) {}
    try
    {
      if (a == null)
      {
        jt localjt = jv.d();
        long l1 = localjt.b();
        paramContext = new t(new u(paramContext.getApplicationContext()));
        a = paramContext;
        c.d();
        l1 = localjt.b() - l1;
        long l2 = ((Long)ak.Q.a()).longValue();
        if (l1 > l2) {
          paramContext.f().c("Slow initialization (ms)", Long.valueOf(l1), Long.valueOf(l2));
        }
      }
      return a;
    }
    finally {}
  }
  
  private void a(r paramr)
  {
    zzx.zzb(paramr, "Analytics service not created/initialized");
    zzx.zzb(paramr.C(), "Analytics service not initialized");
  }
  
  protected Thread.UncaughtExceptionHandler a()
  {
    new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        paramAnonymousThread = g();
        if (paramAnonymousThread != null) {
          paramAnonymousThread.e("Job execution failed", paramAnonymousThrowable);
        }
      }
    };
  }
  
  public Context b()
  {
    return b;
  }
  
  public Context c()
  {
    return c;
  }
  
  public jt d()
  {
    return d;
  }
  
  public ad e()
  {
    return e;
  }
  
  public g f()
  {
    a(f);
    return f;
  }
  
  public g g()
  {
    return f;
  }
  
  public h h()
  {
    zzx.zzz(g);
    return g;
  }
  
  public p i()
  {
    a(h);
    return h;
  }
  
  public ah j()
  {
    a(i);
    return i;
  }
  
  public c k()
  {
    zzx.zzz(l);
    zzx.zzb(l.c(), "Analytics instance not initialized");
    return l;
  }
  
  public o l()
  {
    a(j);
    return j;
  }
  
  public j m()
  {
    a(k);
    return k;
  }
  
  public j n()
  {
    if ((k == null) || (!k.C())) {
      return null;
    }
    return k;
  }
  
  public a o()
  {
    a(n);
    return n;
  }
  
  public aa p()
  {
    a(m);
    return m;
  }
  
  public y q()
  {
    a(o);
    return o;
  }
  
  public ag r()
  {
    return p;
  }
  
  public void s() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */