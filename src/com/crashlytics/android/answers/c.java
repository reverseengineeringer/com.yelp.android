package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.l;
import java.util.concurrent.ScheduledExecutorService;

@TargetApi(14)
class c
  extends m
{
  private final Application d;
  private final Application.ActivityLifecycleCallbacks e = new Application.ActivityLifecycleCallbacks()
  {
    public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
    {
      a(paramAnonymousActivity);
    }
    
    public void onActivityDestroyed(Activity paramAnonymousActivity)
    {
      b(paramAnonymousActivity);
    }
    
    public void onActivityPaused(Activity paramAnonymousActivity)
    {
      c(paramAnonymousActivity);
    }
    
    public void onActivityResumed(Activity paramAnonymousActivity)
    {
      d(paramAnonymousActivity);
    }
    
    public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
    {
      e(paramAnonymousActivity);
    }
    
    public void onActivityStarted(Activity paramAnonymousActivity)
    {
      f(paramAnonymousActivity);
    }
    
    public void onActivityStopped(Activity paramAnonymousActivity)
    {
      g(paramAnonymousActivity);
    }
  };
  
  c(o paramo, q paramq, Application paramApplication)
  {
    super(paramo, paramq);
    d = paramApplication;
    CommonUtils.a(a.c().B(), "Registering activity lifecycle callbacks for session analytics.");
    paramApplication.registerActivityLifecycleCallbacks(e);
  }
  
  public static c a(Application paramApplication, o paramo, k paramk, io.fabric.sdk.android.services.network.c paramc)
  {
    ScheduledExecutorService localScheduledExecutorService = l.b("Crashlytics Trace Manager");
    return new c(paramo, new q(paramApplication, new e(paramApplication, localScheduledExecutorService, paramk, paramc), paramk, localScheduledExecutorService), paramApplication);
  }
  
  public void a()
  {
    CommonUtils.a(a.c().B(), "Unregistering activity lifecycle callbacks for session analytics");
    d.unregisterActivityLifecycleCallbacks(e);
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */