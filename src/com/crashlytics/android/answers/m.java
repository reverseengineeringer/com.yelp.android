package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import io.fabric.sdk.android.services.common.l;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.settings.b;
import java.util.concurrent.ScheduledExecutorService;

class m
{
  final o a;
  final q b;
  boolean c = true;
  
  m(o paramo, q paramq)
  {
    a = paramo;
    b = paramq;
  }
  
  public static m a(Context paramContext, o paramo, k paramk, c paramc)
  {
    ScheduledExecutorService localScheduledExecutorService = l.b("Crashlytics SAM");
    return new m(paramo, new q(paramContext, new e(paramContext, localScheduledExecutorService, paramk, paramc), paramk, localScheduledExecutorService));
  }
  
  public void a()
  {
    b.b();
  }
  
  public void a(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.CREATE, paramActivity), false);
  }
  
  public void a(b paramb, String paramString)
  {
    c = f;
    b.a(paramb, paramString);
  }
  
  public void a(String paramString)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("onCrash called from main thread!!!");
    }
    b.a(SessionEvent.b(a, paramString));
  }
  
  public void b()
  {
    b.a(SessionEvent.a(a), true);
  }
  
  public void b(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.DESTROY, paramActivity), false);
  }
  
  public void b(String paramString)
  {
    b.a(SessionEvent.a(a, paramString), false);
  }
  
  public void c(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.PAUSE, paramActivity), false);
  }
  
  public void d(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.RESUME, paramActivity), false);
  }
  
  public void e(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.SAVE_INSTANCE_STATE, paramActivity), false);
  }
  
  public void f(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.START, paramActivity), false);
  }
  
  public void g(Activity paramActivity)
  {
    b.a(SessionEvent.a(a, SessionEvent.Type.STOP, paramActivity), false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */