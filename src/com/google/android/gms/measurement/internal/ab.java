package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.zzx;

class ab
  extends BroadcastReceiver
{
  static final String a = ab.class.getName();
  private final ag b;
  private boolean c;
  private boolean d;
  
  ab(ag paramag)
  {
    zzx.zzz(paramag);
    b = paramag;
  }
  
  private Context d()
  {
    return b.p();
  }
  
  private z e()
  {
    return b.f();
  }
  
  public void a()
  {
    b.a();
    b.x();
    if (c) {
      return;
    }
    d().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    d = b.o().b();
    e().z().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(d));
    c = true;
  }
  
  public void b()
  {
    b.a();
    b.x();
    if (!c()) {
      return;
    }
    e().z().a("Unregistering connectivity change receiver");
    c = false;
    d = false;
    Context localContext = d();
    try
    {
      localContext.unregisterReceiver(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      e().b().a("Failed to unregister the network broadcast receiver", localIllegalArgumentException);
    }
  }
  
  public boolean c()
  {
    b.x();
    return c;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    b.a();
    paramContext = paramIntent.getAction();
    e().z().a("NetworkBroadcastReceiver received action", paramContext);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      final boolean bool = b.o().b();
      if (d != bool)
      {
        d = bool;
        b.h().a(new Runnable()
        {
          public void run()
          {
            ab.a(ab.this).a(bool);
          }
        });
      }
      return;
    }
    e().c().a("NetworkBroadcastReceiver received unknown action", paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */