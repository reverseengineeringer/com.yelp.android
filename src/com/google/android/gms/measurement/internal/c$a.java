package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

@TargetApi(14)
class c$a
  implements Application.ActivityLifecycleCallbacks
{
  private c$a(c paramc) {}
  
  private boolean a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      a.a("auto", "_ldl", paramString);
      return true;
    }
    return false;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    try
    {
      a.s().z().a("onActivityCreated");
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
        a.s().y().a("Activity created with data 'referrer' param without gclid");
        return;
      }
    }
    catch (Throwable paramActivity)
    {
      a.s().b().a("Throwable caught in onActivityCreated", paramActivity);
      return;
    }
    a.s().y().a("Activity created with referrer", paramActivity);
    a(paramActivity);
  }
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    a.q().c();
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a.q().b();
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */