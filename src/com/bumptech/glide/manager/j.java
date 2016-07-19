package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.util.Log;
import com.bumptech.glide.i;
import com.yelp.android.ao.h;
import java.util.HashMap;
import java.util.Map;

public class j
  implements Handler.Callback
{
  private static final j c = new j();
  final Map<FragmentManager, RequestManagerFragment> a = new HashMap();
  final Map<l, SupportRequestManagerFragment> b = new HashMap();
  private volatile i d;
  private final Handler e = new Handler(Looper.getMainLooper(), this);
  
  public static j a()
  {
    return c;
  }
  
  private i b(Context paramContext)
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = new i(paramContext.getApplicationContext(), new b(), new f());
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
  public i a(Activity paramActivity)
  {
    if ((h.d()) || (Build.VERSION.SDK_INT < 11)) {
      return a(paramActivity.getApplicationContext());
    }
    b(paramActivity);
    return a(paramActivity, paramActivity.getFragmentManager());
  }
  
  public i a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("You cannot start a load on a null Context");
    }
    if ((h.c()) && (!(paramContext instanceof Application)))
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
  i a(Context paramContext, FragmentManager paramFragmentManager)
  {
    RequestManagerFragment localRequestManagerFragment = a(paramFragmentManager);
    i locali = localRequestManagerFragment.b();
    paramFragmentManager = locali;
    if (locali == null)
    {
      paramFragmentManager = new i(paramContext, localRequestManagerFragment.a(), localRequestManagerFragment.c());
      localRequestManagerFragment.a(paramFragmentManager);
    }
    return paramFragmentManager;
  }
  
  i a(Context paramContext, l paraml)
  {
    SupportRequestManagerFragment localSupportRequestManagerFragment = a(paraml);
    i locali = localSupportRequestManagerFragment.b();
    paraml = locali;
    if (locali == null)
    {
      paraml = new i(paramContext, localSupportRequestManagerFragment.a(), localSupportRequestManagerFragment.c());
      localSupportRequestManagerFragment.a(paraml);
    }
    return paraml;
  }
  
  public i a(FragmentActivity paramFragmentActivity)
  {
    if (h.d()) {
      return a(paramFragmentActivity.getApplicationContext());
    }
    b(paramFragmentActivity);
    return a(paramFragmentActivity, paramFragmentActivity.getSupportFragmentManager());
  }
  
  @TargetApi(17)
  RequestManagerFragment a(FragmentManager paramFragmentManager)
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
    return localRequestManagerFragment1;
  }
  
  SupportRequestManagerFragment a(l paraml)
  {
    SupportRequestManagerFragment localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)paraml.a("com.bumptech.glide.manager");
    SupportRequestManagerFragment localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
    if (localSupportRequestManagerFragment2 == null)
    {
      localSupportRequestManagerFragment2 = (SupportRequestManagerFragment)b.get(paraml);
      localSupportRequestManagerFragment1 = localSupportRequestManagerFragment2;
      if (localSupportRequestManagerFragment2 == null)
      {
        localSupportRequestManagerFragment1 = new SupportRequestManagerFragment();
        b.put(paraml, localSupportRequestManagerFragment1);
        paraml.a().a(localSupportRequestManagerFragment1, "com.bumptech.glide.manager").b();
        e.obtainMessage(2, paraml).sendToTarget();
      }
    }
    return localSupportRequestManagerFragment1;
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
      if ((bool) && (localObject1 == null) && (Log.isLoggable("RMRetriever", 5))) {
        Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + paramMessage);
      }
      return bool;
      paramMessage = (FragmentManager)obj;
      localObject1 = a.remove(paramMessage);
      continue;
      paramMessage = (l)obj;
      localObject1 = b.remove(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */