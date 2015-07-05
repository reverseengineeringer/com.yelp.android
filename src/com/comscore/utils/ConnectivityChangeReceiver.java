package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.comscore.applications.d;
import java.util.HashSet;

public class ConnectivityChangeReceiver
  extends BroadcastReceiver
{
  protected boolean a = false;
  protected boolean b = false;
  protected long c = -1L;
  protected HashSet<String> d = null;
  private Runnable e = null;
  private final com.comscore.analytics.a f;
  
  public ConnectivityChangeReceiver(com.comscore.analytics.a parama)
  {
    f = parama;
    d = new HashSet();
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/comscore/utils/ConnectivityChangeReceiver:f	Lcom/comscore/analytics/a;
    //   6: invokevirtual 45	com/comscore/analytics/a:ao	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 27	com/comscore/utils/ConnectivityChangeReceiver:b	Z
    //   22: aload_0
    //   23: getfield 25	com/comscore/utils/ConnectivityChangeReceiver:a	Z
    //   26: ifeq -12 -> 14
    //   29: aload_0
    //   30: getfield 31	com/comscore/utils/ConnectivityChangeReceiver:c	J
    //   33: lconst_0
    //   34: lcmp
    //   35: ifle -21 -> 14
    //   38: aload_0
    //   39: iconst_1
    //   40: invokevirtual 48	com/comscore/utils/ConnectivityChangeReceiver:a	(Z)V
    //   43: goto -29 -> 14
    //   46: astore_2
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_2
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	ConnectivityChangeReceiver
    //   9	2	1	bool	boolean
    //   46	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	46	finally
    //   17	43	46	finally
  }
  
  protected void a(long paramLong)
  {
    if (!f.ao()) {
      return;
    }
    e = new p(this);
    f.s().a(e, paramLong);
  }
  
  protected void a(Context paramContext)
  {
    if (!f.ao()) {}
    do
    {
      return;
      c.a(this, "onConnectedMobile()");
      a("|||cs_3g|||");
    } while (((f.ac() != TransmissionMode.DEFAULT) && ((f.ac() != TransmissionMode.PIGGYBACK) || (!e.f(paramContext)))) || (a));
    a = true;
    a(false);
  }
  
  protected void a(String paramString)
  {
    if (!f.ao()) {}
    while ((!n.f(paramString)) || (d == null) || (d.contains(paramString))) {
      return;
    }
    if (d.size() != 0) {
      f();
    }
    d.add(paramString);
  }
  
  protected void a(boolean paramBoolean)
  {
    if (!f.ao()) {}
    do
    {
      return;
      if (b)
      {
        e();
        if ((c < SystemClock.uptimeMillis()) || (c < 0L) || (!paramBoolean)) {
          c = (SystemClock.uptimeMillis() + 30000L);
        }
        a(c - SystemClock.uptimeMillis());
        c.a(this, "scheduleFlushTask(): Flushing in " + (c - SystemClock.uptimeMillis()));
        return;
      }
    } while (c >= 0L);
    c = (SystemClock.uptimeMillis() + 30000L);
  }
  
  protected String b(Context paramContext)
  {
    return e.a(paramContext);
  }
  
  public void b()
  {
    try
    {
      b = false;
      e();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void b(boolean paramBoolean)
  {
    try
    {
      c.a(this, "flushing");
      f.r(paramBoolean);
      c = -1L;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void c()
  {
    if (!f.ao()) {}
    do
    {
      return;
      c.a(this, "onConnectedWifi()");
      a(b(f.N()));
    } while ((f.ac() == TransmissionMode.NEVER) || (f.ac() == TransmissionMode.DISABLED) || (a));
    a = true;
    a(false);
  }
  
  protected void d()
  {
    if (!f.ao()) {
      return;
    }
    c.a(this, "onDisconnected()");
    e();
    a = false;
    c = -1L;
  }
  
  protected void e()
  {
    if (e != null)
    {
      c.a(this, "cancelFlushTask()");
      f.s().b(e);
      e = null;
    }
  }
  
  protected void f()
  {
    if (!f.ao()) {
      return;
    }
    f.u().a(3000L);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    for (;;)
    {
      try
      {
        if (paramIntent.getExtras() != null)
        {
          if (e.b(paramContext)) {
            c();
          }
        }
        else {
          return;
        }
        if (e.c(paramContext)) {
          a(paramContext);
        } else {
          d();
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.ConnectivityChangeReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */