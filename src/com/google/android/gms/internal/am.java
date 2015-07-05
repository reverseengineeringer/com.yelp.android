package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;

@ey
public class am
  implements Application.ActivityLifecycleCallbacks
{
  private Context mContext;
  private final Object mH = new Object();
  private Activity nB;
  
  public am(Application paramApplication, Activity paramActivity)
  {
    paramApplication.registerActivityLifecycleCallbacks(this);
    setActivity(paramActivity);
    mContext = paramApplication.getApplicationContext();
  }
  
  private void setActivity(Activity paramActivity)
  {
    synchronized (mH)
    {
      if (!paramActivity.getClass().getName().startsWith("com.google.android.gms.ads")) {
        nB = paramActivity;
      }
      return;
    }
  }
  
  public Activity getActivity()
  {
    return nB;
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    synchronized (mH)
    {
      if (nB == null) {
        return;
      }
      if (nB.equals(paramActivity)) {
        nB = null;
      }
      return;
    }
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    setActivity(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */