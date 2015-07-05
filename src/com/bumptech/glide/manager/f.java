package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class f
  implements c
{
  private final Context a;
  private final d b;
  private boolean c;
  private boolean d;
  private final BroadcastReceiver e = new g(this);
  
  public f(Context paramContext, d paramd)
  {
    a = paramContext.getApplicationContext();
    b = paramd;
  }
  
  private void a()
  {
    if (d) {
      return;
    }
    c = a(a);
    a.registerReceiver(e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    d = true;
  }
  
  private boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  private void b()
  {
    if (!d) {
      return;
    }
    a.unregisterReceiver(e);
    d = false;
  }
  
  public void c()
  {
    a();
  }
  
  public void d()
  {
    b();
  }
  
  public void e() {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */