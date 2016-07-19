package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.google.android.gms.analytics.internal.aa;
import com.google.android.gms.analytics.internal.f;
import com.google.android.gms.analytics.internal.l;
import com.google.android.gms.analytics.internal.m;
import com.google.android.gms.analytics.internal.o;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class c
  extends h
{
  private static List<Runnable> b = new ArrayList();
  private boolean c;
  private boolean d;
  private Set<a> e = new HashSet();
  private boolean f;
  private boolean g;
  private volatile boolean h;
  
  public c(t paramt)
  {
    super(paramt);
  }
  
  public static c a(Context paramContext)
  {
    return t.a(paramContext).k();
  }
  
  public static void d()
  {
    try
    {
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext()) {
          ((Runnable)localIterator.next()).run();
        }
        b = null;
      }
    }
    finally {}
  }
  
  private p p()
  {
    return k().i();
  }
  
  private o q()
  {
    return k().l();
  }
  
  public g a(int paramInt)
  {
    try
    {
      g localg = new g(k(), null, null);
      if (paramInt > 0)
      {
        m localm = (m)new l(k()).a(paramInt);
        if (localm != null) {
          localg.a(localm);
        }
      }
      localg.E();
      return localg;
    }
    finally {}
  }
  
  public void a()
  {
    b();
    c = true;
  }
  
  void a(Activity paramActivity)
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(paramActivity);
    }
  }
  
  @TargetApi(14)
  public void a(Application paramApplication)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (!f))
    {
      paramApplication.registerActivityLifecycleCallbacks(new b());
      f = true;
    }
  }
  
  void a(a parama)
  {
    e.add(parama);
    parama = k().b();
    if ((parama instanceof Application)) {
      a((Application)parama);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  void b()
  {
    o localo = q();
    if (localo.d()) {
      g().a(localo.e());
    }
    if (localo.h()) {
      a(localo.i());
    }
    if (localo.d())
    {
      e locale = f.a();
      if (locale != null) {
        locale.a(localo.e());
      }
    }
  }
  
  public void b(int paramInt)
  {
    p().a(paramInt);
  }
  
  void b(Activity paramActivity)
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).b(paramActivity);
    }
  }
  
  void b(a parama)
  {
    e.remove(parama);
  }
  
  public void b(boolean paramBoolean)
  {
    h = paramBoolean;
    if (h) {
      p().c();
    }
  }
  
  public boolean c()
  {
    return (c) && (!d);
  }
  
  public boolean e()
  {
    return g;
  }
  
  public boolean f()
  {
    return h;
  }
  
  @Deprecated
  public e g()
  {
    return f.a();
  }
  
  public String h()
  {
    zzx.zzcE("getClientId can not be called from the main thread");
    return k().p().b();
  }
  
  public void i()
  {
    p().d();
  }
  
  void j()
  {
    p().e();
  }
  
  static abstract interface a
  {
    public abstract void a(Activity paramActivity);
    
    public abstract void b(Activity paramActivity);
  }
  
  @TargetApi(14)
  class b
    implements Application.ActivityLifecycleCallbacks
  {
    b() {}
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityDestroyed(Activity paramActivity) {}
    
    public void onActivityPaused(Activity paramActivity) {}
    
    public void onActivityResumed(Activity paramActivity) {}
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity)
    {
      a(paramActivity);
    }
    
    public void onActivityStopped(Activity paramActivity)
    {
      b(paramActivity);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */