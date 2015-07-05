package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

class u
  extends BroadcastReceiver
{
  static final String yR = u.class.getName();
  private final aj yS;
  
  u(aj paramaj)
  {
    yS = paramaj;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool1 = false;
    paramContext = paramIntent.getAction();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      bool2 = paramIntent.getBooleanExtra("noConnectivity", false);
      paramContext = yS;
      if (!bool2) {
        bool1 = true;
      }
      paramContext.C(bool1);
    }
    while ((!"com.google.analytics.RADIO_POWERED".equals(paramContext)) || (paramIntent.hasExtra(yR)))
    {
      boolean bool2;
      return;
    }
    yS.ey();
  }
  
  public void z(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramContext.registerReceiver(this, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.google.analytics.RADIO_POWERED");
    localIntentFilter.addCategory(paramContext.getPackageName());
    paramContext.registerReceiver(this, localIntentFilter);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */