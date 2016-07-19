package com.yelp.android.bq;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.PowerManager;

public class c
  implements a, b
{
  private a.a a;
  
  public c(Context paramContext)
  {
    paramContext.getApplicationContext().registerReceiver(new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if (c.a(c.this) == null) {
          return;
        }
        c.a(c.this).a(a(paramAnonymousContext));
      }
    }, a());
  }
  
  @TargetApi(23)
  private static IntentFilter a()
  {
    IntentFilter localIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    if (Build.VERSION.SDK_INT >= 23) {
      localIntentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
    }
    return localIntentFilter;
  }
  
  @TargetApi(23)
  private static boolean b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return ((PowerManager)paramContext.getSystemService("power")).isDeviceIdleMode();
    }
    return false;
  }
  
  public void a(a.a parama)
  {
    a = parama;
  }
  
  public boolean a(Context paramContext)
  {
    if (b(paramContext)) {
      return false;
    }
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isConnectedOrConnecting())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bq.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */