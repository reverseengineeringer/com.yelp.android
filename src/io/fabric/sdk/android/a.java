package io.fabric.sdk.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

public class a
{
  private final Application a;
  private a b;
  
  public a(Context paramContext)
  {
    a = ((Application)paramContext.getApplicationContext());
    if (Build.VERSION.SDK_INT >= 14) {
      b = new a(a);
    }
  }
  
  public boolean a(b paramb)
  {
    return (b != null) && (a.a(b, paramb));
  }
  
  private static class a
  {
    private final Set<Application.ActivityLifecycleCallbacks> a = new HashSet();
    private final Application b;
    
    a(Application paramApplication)
    {
      b = paramApplication;
    }
    
    @TargetApi(14)
    private boolean a(final a.b paramb)
    {
      if (b != null)
      {
        paramb = new Application.ActivityLifecycleCallbacks()
        {
          public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
          {
            paramb.a(paramAnonymousActivity, paramAnonymousBundle);
          }
          
          public void onActivityDestroyed(Activity paramAnonymousActivity)
          {
            paramb.e(paramAnonymousActivity);
          }
          
          public void onActivityPaused(Activity paramAnonymousActivity)
          {
            paramb.c(paramAnonymousActivity);
          }
          
          public void onActivityResumed(Activity paramAnonymousActivity)
          {
            paramb.b(paramAnonymousActivity);
          }
          
          public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
          {
            paramb.b(paramAnonymousActivity, paramAnonymousBundle);
          }
          
          public void onActivityStarted(Activity paramAnonymousActivity)
          {
            paramb.a(paramAnonymousActivity);
          }
          
          public void onActivityStopped(Activity paramAnonymousActivity)
          {
            paramb.d(paramAnonymousActivity);
          }
        };
        b.registerActivityLifecycleCallbacks(paramb);
        a.add(paramb);
        return true;
      }
      return false;
    }
  }
  
  public static abstract class b
  {
    public void a(Activity paramActivity) {}
    
    public void a(Activity paramActivity, Bundle paramBundle) {}
    
    public void b(Activity paramActivity) {}
    
    public void b(Activity paramActivity, Bundle paramBundle) {}
    
    public void c(Activity paramActivity) {}
    
    public void d(Activity paramActivity) {}
    
    public void e(Activity paramActivity) {}
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */