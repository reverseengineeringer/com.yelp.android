package com.comscore.applications;

import android.util.Log;
import com.comscore.utils.j;
import com.comscore.utils.m;
import java.util.HashMap;

public class d
  implements Runnable
{
  protected final long a;
  protected long b = -1L;
  protected long c;
  private com.comscore.analytics.a d;
  private boolean e = false;
  private boolean f = false;
  
  public d(com.comscore.analytics.a parama, long paramLong)
  {
    a = paramLong;
    c = a;
    d = parama;
  }
  
  private long a(m paramm)
  {
    long l2 = 0L;
    paramm = paramm.b("lastMeasurementProcessedTimestamp");
    long l1 = l2;
    if (paramm != null)
    {
      l1 = l2;
      if (paramm.length() <= 0) {}
    }
    try
    {
      l1 = Long.parseLong(paramm);
      return l1;
    }
    catch (Exception paramm) {}
    return 0L;
  }
  
  public void a()
  {
    a(false);
  }
  
  public void a(int paramInt)
  {
    if (!d.ao()) {}
    do
    {
      return;
      e();
      e = true;
      Log.d("KeepAlive", "start(" + paramInt + ")");
    } while (!d.P());
    long l = System.currentTimeMillis();
    if (b < l) {
      b = (l + paramInt);
    }
    c();
  }
  
  public void a(long paramLong)
  {
    if (!d.ao()) {}
    do
    {
      return;
      e();
      Log.d("KeepAlive", "reset:" + paramLong);
      b = (System.currentTimeMillis() + paramLong);
      c = paramLong;
    } while (!e);
    a(0);
  }
  
  public void a(boolean paramBoolean)
  {
    if (!d.ao()) {}
    j localj;
    long l1;
    long l2;
    do
    {
      do
      {
        return;
      } while (!d.P());
      localj = d.p();
      l1 = a(d.r());
      l2 = System.currentTimeMillis() - l1;
      Log.d("KeepAlive", "processKeepAlive(" + paramBoolean + ") timeSinceLastTransmission=" + (System.currentTimeMillis() - l2) + " currentTimeout=" + c);
    } while ((l1 == 0L) || (l2 <= c - 1000L));
    Log.d("KeepAlive", "Sending Keep-alive");
    if (!paramBoolean) {
      d.a(EventType.KEEPALIVE, new HashMap(), true);
    }
    for (;;)
    {
      d.r().a("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
      return;
      localj.a(EventType.KEEPALIVE, null, true);
    }
  }
  
  public void b()
  {
    a(a);
  }
  
  protected void c()
  {
    if (!d.ao()) {
      return;
    }
    d.s().a(this, b - System.currentTimeMillis(), true, a);
    f = true;
  }
  
  public void d()
  {
    Log.d("KeepAlive", "stop");
    e = false;
    e();
    a(true);
  }
  
  public void e()
  {
    Log.d("KeepAlive", "cancel()");
    d.s().b(this);
    f = false;
  }
  
  public void run()
  {
    if (!d.ao()) {}
    while (!f) {
      return;
    }
    Log.d("KeepAlive", "run()");
    a();
  }
}

/* Location:
 * Qualified Name:     com.comscore.applications.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */