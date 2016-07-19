package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.measurement.a.a;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Set;

public class c
  extends aj
{
  private a a;
  private a.a b;
  private boolean c;
  
  protected c(ag paramag)
  {
    super(paramag);
  }
  
  private void a(String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean, String paramString3)
  {
    a(paramString1, paramString2, paramBundle, paramBoolean, paramString3, l().a());
  }
  
  private void a(String paramString1, String paramString2, Bundle paramBundle, boolean paramBoolean, String paramString3, long paramLong)
  {
    zzx.zzcM(paramString1);
    o().b(paramString2);
    Bundle localBundle = new Bundle();
    if (paramBundle != null)
    {
      int k = u().b();
      Iterator localIterator = paramBundle.keySet().iterator();
      i = 0;
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        o().d(str);
        int j = i;
        if (k.a(str))
        {
          j = i + 1;
          if (j > k) {
            break label184;
          }
        }
        label184:
        for (boolean bool = true;; bool = false)
        {
          zzx.zzb(bool, "Event can't contain more then " + k + " params");
          Object localObject = o().a(str, paramBundle.get(str));
          i = j;
          if (localObject == null) {
            break;
          }
          o().a(localBundle, str, localObject);
          i = j;
          break;
        }
      }
    }
    int i = u().w();
    if (paramString1.length() <= i) {}
    for (paramBundle = paramString1;; paramBundle = paramString1.substring(0, i))
    {
      localBundle.putString("_o", paramBundle);
      a(paramString1, paramString2, paramLong, localBundle, paramBoolean, paramString3);
      return;
    }
  }
  
  private void a(String paramString1, String paramString2, Object paramObject, long paramLong)
  {
    zzx.zzcM(paramString1);
    zzx.zzcM(paramString2);
    f();
    d();
    G();
    if (!t().w()) {
      s().y().a("User property not set since app measurement is disabled");
    }
    while (!n.b()) {
      return;
    }
    s().y().a("Setting user property (FE)", paramString2, paramObject);
    paramString1 = new UserAttributeParcel(paramString2, paramLong, paramObject, paramString1);
    k().a(paramString1);
  }
  
  private void a(boolean paramBoolean)
  {
    f();
    d();
    G();
    s().y().a("Setting app measurement enabled (FE)", Boolean.valueOf(paramBoolean));
    t().b(paramBoolean);
    k().c();
  }
  
  private void b(String paramString1, String paramString2, long paramLong, Bundle paramBundle, boolean paramBoolean, String paramString3)
  {
    zzx.zzcM(paramString1);
    zzx.zzcM(paramString2);
    zzx.zzz(paramBundle);
    f();
    G();
    if (!t().w()) {
      s().y().a("Event not sent since app measurement is disabled");
    }
    do
    {
      return;
      if (!c)
      {
        c = true;
        v();
      }
      if ((paramBoolean) && (b != null) && (!k.g(paramString2)))
      {
        s().y().a("Passing event to registered event handler (FE)", paramString2, paramBundle);
        b.a(paramString1, paramString2, paramBundle, paramLong);
        return;
      }
    } while (!n.b());
    s().y().a("Logging event (FE)", paramString2, paramBundle);
    paramString1 = new EventParcel(paramString2, new EventParams(paramBundle), paramString1, paramLong);
    k().a(paramString1, paramString3);
  }
  
  private void v()
  {
    try
    {
      a(Class.forName(w()));
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      s().x().a("Tag Manager is not found and thus will not be used");
    }
  }
  
  private String w()
  {
    return "com.google.android.gms.tagmanager.TagManagerService";
  }
  
  protected void a() {}
  
  public void a(Class<?> paramClass)
  {
    try
    {
      paramClass.getDeclaredMethod("initialize", new Class[] { Context.class }).invoke(null, new Object[] { m() });
      return;
    }
    catch (Exception paramClass)
    {
      s().c().a("Failed to invoke Tag Manager's initialize() method", paramClass);
    }
  }
  
  protected void a(final String paramString1, final String paramString2, final long paramLong, Bundle paramBundle, final boolean paramBoolean, final String paramString3)
  {
    zzx.zzz(paramBundle);
    r().a(new Runnable()
    {
      public void run()
      {
        c.a(c.this, paramString1, paramString2, paramLong, paramBoolean, paramString3, f);
      }
    });
  }
  
  void a(final String paramString1, final String paramString2, final long paramLong, final Object paramObject)
  {
    r().a(new Runnable()
    {
      public void run()
      {
        c.a(c.this, paramString1, paramString2, paramObject, paramLong);
      }
    });
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle)
  {
    d();
    a(paramString1, paramString2, paramBundle, true, null);
  }
  
  public void a(String paramString1, String paramString2, Object paramObject)
  {
    zzx.zzcM(paramString1);
    long l = l().a();
    o().c(paramString2);
    if (paramObject != null)
    {
      o().b(paramString2, paramObject);
      paramObject = o().c(paramString2, paramObject);
      if (paramObject != null) {
        a(paramString1, paramString2, l, paramObject);
      }
      return;
    }
    a(paramString1, paramString2, l, null);
  }
  
  @TargetApi(14)
  public void b()
  {
    if ((m().getApplicationContext() instanceof Application))
    {
      Application localApplication = (Application)m().getApplicationContext();
      if (a == null) {
        a = new a(null);
      }
      localApplication.unregisterActivityLifecycleCallbacks(a);
      localApplication.registerActivityLifecycleCallbacks(a);
      s().z().a("Registered activity lifecycle callback");
    }
  }
  
  public void c()
  {
    f();
    d();
    G();
    if (!n.b()) {}
    String str;
    do
    {
      return;
      k().v();
      str = t().x();
    } while ((TextUtils.isEmpty(str)) || (str.equals(j().c())));
    Bundle localBundle = new Bundle();
    localBundle.putString("_po", str);
    a("auto", "_ou", localBundle);
  }
  
  @TargetApi(14)
  private class a
    implements Application.ActivityLifecycleCallbacks
  {
    private a() {}
    
    private boolean a(String paramString)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        a("auto", "_ldl", paramString);
        return true;
      }
      return false;
    }
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
    {
      try
      {
        s().z().a("onActivityCreated");
        paramActivity = paramActivity.getIntent();
        if (paramActivity == null) {
          return;
        }
        paramActivity = paramActivity.getData();
        if ((paramActivity == null) || (!paramActivity.isHierarchical())) {
          return;
        }
        paramActivity = paramActivity.getQueryParameter("referrer");
        if (TextUtils.isEmpty(paramActivity)) {
          return;
        }
        if (!paramActivity.contains("gclid"))
        {
          s().y().a("Activity created with data 'referrer' param without gclid");
          return;
        }
      }
      catch (Throwable paramActivity)
      {
        s().b().a("Throwable caught in onActivityCreated", paramActivity);
        return;
      }
      s().y().a("Activity created with referrer", paramActivity);
      a(paramActivity);
    }
    
    public void onActivityDestroyed(Activity paramActivity) {}
    
    public void onActivityPaused(Activity paramActivity)
    {
      q().c();
    }
    
    public void onActivityResumed(Activity paramActivity)
    {
      q().b();
    }
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity) {}
    
    public void onActivityStopped(Activity paramActivity) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */