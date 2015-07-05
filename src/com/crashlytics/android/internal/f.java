package com.crashlytics.android.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class f
  implements Application.ActivityLifecycleCallbacks
{
  f(e parame) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    a.a(paramActivity);
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    a.b(paramActivity);
  }
  
  public final void onActivityPaused(Activity paramActivity)
  {
    a.c(paramActivity);
  }
  
  public final void onActivityResumed(Activity paramActivity)
  {
    a.d(paramActivity);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    a.e(paramActivity);
  }
  
  public final void onActivityStarted(Activity paramActivity)
  {
    a.f(paramActivity);
  }
  
  public final void onActivityStopped(Activity paramActivity)
  {
    a.g(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */