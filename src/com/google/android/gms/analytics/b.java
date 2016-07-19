package com.google.android.gms.analytics;

import android.content.Context;
import java.util.ArrayList;

public class b
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler a;
  private final g b;
  private final Context c;
  private a d;
  private c e;
  
  public b(g paramg, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (paramg == null) {
      throw new NullPointerException("tracker cannot be null");
    }
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    a = paramUncaughtExceptionHandler;
    b = paramg;
    d = new f(paramContext, new ArrayList());
    c = paramContext.getApplicationContext();
    paramContext = new StringBuilder().append("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null) {}
    for (paramg = "null";; paramg = paramUncaughtExceptionHandler.getClass().getName())
    {
      com.google.android.gms.analytics.internal.f.b(paramg);
      return;
    }
  }
  
  c a()
  {
    if (e == null) {
      e = c.a(c);
    }
    return e;
  }
  
  Thread.UncaughtExceptionHandler b()
  {
    return a;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject = "UncaughtException";
    if (d != null) {
      if (paramThread == null) {
        break label115;
      }
    }
    label115:
    for (localObject = paramThread.getName();; localObject = null)
    {
      localObject = d.a((String)localObject, paramThrowable);
      com.google.android.gms.analytics.internal.f.b("Reporting uncaught exception: " + (String)localObject);
      b.a(new d.b().a((String)localObject).a(true).a());
      localObject = a();
      ((c)localObject).i();
      ((c)localObject).j();
      if (a != null)
      {
        com.google.android.gms.analytics.internal.f.b("Passing exception to the original handler");
        a.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */