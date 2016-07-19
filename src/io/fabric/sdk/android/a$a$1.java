package io.fabric.sdk.android;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class a$a$1
  implements Application.ActivityLifecycleCallbacks
{
  a$a$1(a.a parama, a.b paramb) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    a.a(paramActivity, paramBundle);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    a.e(paramActivity);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    a.c(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a.b(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    a.b(paramActivity, paramBundle);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    a.a(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a.d(paramActivity);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */