package com.crashlytics.android.answers;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class c$1
  implements Application.ActivityLifecycleCallbacks
{
  c$1(c paramc) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    a.a(paramActivity);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    a.b(paramActivity);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    a.c(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a.d(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    a.e(paramActivity);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    a.f(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a.g(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */