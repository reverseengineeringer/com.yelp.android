package com.crashlytics.android.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class cn
  implements Application.ActivityLifecycleCallbacks
{
  cn(cm paramcm) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    cl.a(a.a, paramActivity);
  }
  
  public final void onActivityDestroyed(Activity paramActivity) {}
  
  public final void onActivityPaused(Activity paramActivity) {}
  
  public final void onActivityResumed(Activity paramActivity)
  {
    cl.a(a.a, paramActivity);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity)
  {
    cl.a(a.a, paramActivity);
  }
  
  public final void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */