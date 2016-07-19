package com.bumptech.glide.manager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class e
  implements c
{
  private final Context a;
  private final c.a b;
  private boolean c;
  private boolean d;
  private final BroadcastReceiver e = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      boolean bool = e.a(e.this);
      e.a(e.this, e.a(e.this, paramAnonymousContext));
      if (bool != e.a(e.this)) {
        e.b(e.this).a(e.a(e.this));
      }
    }
  };
  
  public e(Context paramContext, c.a parama)
  {
    a = paramContext.getApplicationContext();
    b = parama;
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
  
  public void d()
  {
    a();
  }
  
  public void e()
  {
    b();
  }
  
  public void f() {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */