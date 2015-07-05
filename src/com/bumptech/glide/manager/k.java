package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.bumptech.glide.j;
import com.yelp.android.ai.f;
import java.util.HashMap;
import java.util.Map;

public class k
  implements Handler.Callback
{
  private static final k c = new k();
  final Map<android.app.FragmentManager, RequestManagerFragment> a = new HashMap();
  final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> b = new HashMap();
  private volatile j d;
  private final Handler e = new Handler(Looper.getMainLooper(), this);
  
  public static k a()
  {
    return c;
  }
  
  private j b(Context paramContext)
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = new j(paramContext.getApplicationContext(), new b());
      }
      return d;
    }
    finally {}
  }
  
  @TargetApi(17)
  private static void b(Activity paramActivity)
  {
    if ((Build.VERSION.SDK_INT >= 17) && (paramActivity.isDestroyed())) {
      throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
  }
  
  @TargetApi(11)
  public j a(Activity paramActivity)
  {
    if ((f.c()) || (Build.VERSION.SDK_INT < 11)) {
      return a(paramActivity.getApplicationContext());
    }
    b(paramActivity);
    return a(paramActivity, paramActivity.getFragmentManager());
  }
  
  public j a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("You cannot start a load on a null Context");
    }
    if ((f.b()) && (!(paramContext instanceof Application)))
    {
      if ((paramContext instanceof FragmentActivity)) {
        return a((FragmentActivity)paramContext);
      }
      if ((paramContext instanceof Activity)) {
        return a((Activity)paramContext);
      }
      if ((paramContext instanceof ContextWrapper)) {
        return a(((ContextWrapper)paramContext).getBaseContext());
      }
    }
    return b(paramContext);
  }
  
  @TargetApi(11)
  j a(Context paramContext, android.app.FragmentManager paramFragmentManager)
  {
    RequestManagerFragment localRequestManagerFragment2 = (RequestManagerFragment)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    RequestManagerFragment localRequestManagerFragment1 = localRequestManagerFragment2;
    if (localRequestManagerFragment2 == null)
    {
      localRequestManagerFragment2 = (RequestManagerFragment)a.get(paramFragmentManager);
      localRequestManagerFragment1 = localRequestManagerFragment2;
      if (localRequestManagerFragment2 == null)
      {
        localRequestManagerFragment1 = new RequestManagerFragment();
        a.put(paramFragmentManager, localRequestManagerFragment1);
        paramFragmentManager.beginTransaction().add(localRequestManagerFragment1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        e.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    paramFragmentManager = localRequestManagerFragment1.b();
    if (paramFragmentManager == null)
    {
      paramContext = new j(paramContext, localRequestManagerFragment1.a());
      localRequestManagerFragment1.a(paramContext);
      return paramContext;
    }
    return paramFragmentManager;
  }
  
  j a(Context paramContext, android.support.v4.app.FragmentManager paramFragmentManager)
  {
    SupportRequestManagerFragment localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    SupportRequestManagerFragment localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
    if (localSupportRequestManagerFragment2 == null)
    {
      localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)b.get(paramFragmentManager);
      localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
      if (localSupportRequestManagerFragment2 == null)
      {
        localSupportRequestManagerFragment1 = new SupportRequestManagerFragment();
        b.put(paramFragmentManager, localSupportRequestManagerFragment1);
        paramFragmentManager.beginTransaction().add(localSupportRequestManagerFragment1, "com.bumptech.glide.manager").commitAllowingStateLoss();
        e.obtainMessage(2, paramFragmentManager).sendToTarget();
      }
    }
    paramFragmentManager = localSupportRequestManagerFragment1.b();
    if (paramFragmentManager == null)
    {
      paramContext = new j(paramContext, localSupportRequestManagerFragment1.a());
      localSupportRequestManagerFragment1.a(paramContext);
      return paramContext;
    }
    return paramFragmentManager;
  }
  
  public j a(Fragment paramFragment)
  {
    if (paramFragment.getActivity() == null) {
      throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }
    if (f.c()) {
      return a(paramFragment.getActivity().getApplicationContext());
    }
    if (paramFragment.isDetached()) {
      throw new IllegalArgumentException("You cannot start a load on a detached fragment");
    }
    android.support.v4.app.FragmentManager localFragmentManager = paramFragment.getChildFragmentManager();
    return a(paramFragment.getActivity(), localFragmentManager);
  }
  
  public j a(FragmentActivity paramFragmentActivity)
  {
    if (f.c()) {
      return a(paramFragmentActivity.getApplicationContext());
    }
    b(paramFragmentActivity);
    return a(paramFragmentActivity, paramFragmentActivity.getSupportFragmentManager());
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    Object localObject2 = null;
    boolean bool = true;
    Object localObject1;
    switch (what)
    {
    default: 
      bool = false;
      localObject1 = null;
      paramMessage = (Message)localObject2;
    }
    for (;;)
    {
      if ((bool) && (localObject1 == null) && (Log.isLoggable("com.bumptech.glide.manager", 5))) {
        Log.w("com.bumptech.glide.manager", "Failed to remove expected request manager fragment, manager: " + paramMessage);
      }
      return bool;
      paramMessage = (android.app.FragmentManager)obj;
      localObject1 = a.remove(paramMessage);
      continue;
      paramMessage = (android.support.v4.app.FragmentManager)obj;
      localObject1 = b.remove(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */