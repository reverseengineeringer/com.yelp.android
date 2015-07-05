package com.yelp.android.appdata;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class a
  implements Application.ActivityLifecycleCallbacks
{
  private static a a;
  private static long b;
  private static long c;
  
  public static a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  private static boolean b()
  {
    return b > c;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    boolean bool = b();
    b += 1L;
    if ((!bool) && (b()))
    {
      Intent localIntent = new Intent("com.yelp.android.action.ON_WAKE");
      localIntent.addCategory("com.yelp.android.action.CATEGORY_STATE");
      paramActivity.getApplicationContext().sendBroadcast(localIntent);
    }
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    boolean bool = b();
    c += 1L;
    if ((bool) && (!b()))
    {
      Intent localIntent = new Intent("com.yelp.android.action.ON_BACKGROUNDING");
      localIntent.addCategory("com.yelp.android.action.CATEGORY_STATE");
      paramActivity.getApplicationContext().sendBroadcast(localIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */