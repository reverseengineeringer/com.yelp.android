package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

@TargetApi(14)
class c$b
  implements Application.ActivityLifecycleCallbacks
{
  c$b(c paramc) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    a.a(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a.b(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */