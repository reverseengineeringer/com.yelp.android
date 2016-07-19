package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.analytics.AnalyticsService;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.measurement.h;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class p
  extends r
{
  private final z a;
  
  public p(t paramt, u paramu)
  {
    super(paramt);
    zzx.zzz(paramu);
    a = paramu.j(paramt);
  }
  
  public long a(v paramv)
  {
    D();
    zzx.zzz(paramv);
    m();
    long l = a.a(paramv, true);
    if (l == 0L) {
      a.a(paramv);
    }
    return l;
  }
  
  protected void a()
  {
    a.E();
  }
  
  public void a(final int paramInt)
  {
    D();
    b("setLocalDispatchPeriod (sec)", Integer.valueOf(paramInt));
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).a(paramInt * 1000L);
      }
    });
  }
  
  public void a(final ai paramai)
  {
    D();
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).a(paramai);
      }
    });
  }
  
  public void a(final c paramc)
  {
    zzx.zzz(paramc);
    D();
    b("Hit delivery requested", paramc);
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).a(paramc);
      }
    });
  }
  
  public void a(final String paramString, final Runnable paramRunnable)
  {
    zzx.zzh(paramString, "campaign param can't be empty");
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).a(paramString);
        if (paramRunnable != null) {
          paramRunnable.run();
        }
      }
    });
  }
  
  public void a(final boolean paramBoolean)
  {
    a("Network connectivity status changed", Boolean.valueOf(paramBoolean));
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).a(paramBoolean);
      }
    });
  }
  
  public void b()
  {
    a.b();
  }
  
  public void c()
  {
    D();
    l();
    r().a(new Runnable()
    {
      public void run()
      {
        p.a(p.this).h();
      }
    });
  }
  
  public void d()
  {
    D();
    Context localContext = o();
    if ((AnalyticsReceiver.a(localContext)) && (AnalyticsService.a(localContext)))
    {
      Intent localIntent = new Intent(localContext, AnalyticsService.class);
      localIntent.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
      localContext.startService(localIntent);
      return;
    }
    a(null);
  }
  
  public boolean e()
  {
    D();
    Future localFuture = r().a(new Callable()
    {
      public Void a()
        throws Exception
      {
        p.a(p.this).F();
        return null;
      }
    });
    try
    {
      localFuture.get(4L, TimeUnit.SECONDS);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      d("syncDispatchLocalHits interrupted", localInterruptedException);
      return false;
    }
    catch (ExecutionException localExecutionException)
    {
      e("syncDispatchLocalHits failed", localExecutionException);
      return false;
    }
    catch (TimeoutException localTimeoutException)
    {
      d("syncDispatchLocalHits timed out", localTimeoutException);
    }
    return false;
  }
  
  public void f()
  {
    D();
    h.d();
    a.f();
  }
  
  public void g()
  {
    b("Radio powered up");
    d();
  }
  
  void h()
  {
    m();
    a.e();
  }
  
  void i()
  {
    m();
    a.d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */