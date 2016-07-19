package com.yelp.android.bz;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import com.yelp.android.util.YelpLog;

public class a
  implements Application.ActivityLifecycleCallbacks
{
  private String a(Activity paramActivity)
  {
    return String.format("%s {@%s}", new Object[] { paramActivity.getLocalClassName(), Integer.toHexString(paramActivity.hashCode()) });
  }
  
  private String a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return "[null Bundle]";
    }
    return "[nonnull Bundle]";
  }
  
  private void a(String... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append(paramVarArgs[i]);
      localStringBuilder.append(" ");
      i += 1;
    }
    YelpLog.remoteBreadcrumb(localStringBuilder.toString());
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    a(new String[] { a(paramActivity), "#onCreate", a(paramBundle) });
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    a(new String[] { a(paramActivity), "#onDestroy" });
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    a(new String[] { a(paramActivity), "#onPause" });
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a(new String[] { a(paramActivity), "#onResume" });
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    a(new String[] { a(paramActivity), "#onSaveInstanceState", a(paramBundle) });
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    a(new String[] { a(paramActivity), "#onStart" });
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a(new String[] { a(paramActivity), "#onStop" });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */