package com.kahuna.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class l$1
  implements Application.ActivityLifecycleCallbacks
{
  l$1(l paraml) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    l.a(a, paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    l.b(a, paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */