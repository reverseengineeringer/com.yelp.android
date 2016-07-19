package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.m;
import com.facebook.internal.v;

public abstract class c
{
  private final BroadcastReceiver a;
  private final m b;
  private boolean c = false;
  
  public c()
  {
    v.b();
    a = new a(null);
    b = m.a(g.f());
    a();
  }
  
  private void d()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
    b.a(a, localIntentFilter);
  }
  
  public void a()
  {
    if (c) {
      return;
    }
    d();
    c = true;
  }
  
  protected abstract void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2);
  
  public void b()
  {
    if (!c) {
      return;
    }
    b.a(a);
    c = false;
  }
  
  public boolean c()
  {
    return c;
  }
  
  private class a
    extends BroadcastReceiver
  {
    private a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(paramIntent.getAction()))
      {
        paramContext = (AccessToken)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN");
        paramIntent = (AccessToken)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN");
        a(paramContext, paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */