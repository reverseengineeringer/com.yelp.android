package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

class bo
  extends BroadcastReceiver
{
  static final String yR = bo.class.getName();
  private final cx asb;
  
  bo(cx paramcx)
  {
    asb = paramcx;
  }
  
  public static void aa(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
    localIntent.addCategory(paramContext.getPackageName());
    localIntent.putExtra(yR, true);
    paramContext.sendBroadcast(localIntent);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      localBundle = paramIntent.getExtras();
      paramContext = Boolean.FALSE;
      if (localBundle != null) {
        paramContext = Boolean.valueOf(paramIntent.getExtras().getBoolean("noConnectivity"));
      }
      paramIntent = asb;
      if (!paramContext.booleanValue())
      {
        bool = true;
        paramIntent.C(bool);
      }
    }
    while ((!"com.google.analytics.RADIO_POWERED".equals(paramContext)) || (paramIntent.hasExtra(yR))) {
      for (;;)
      {
        Bundle localBundle;
        return;
        boolean bool = false;
      }
    }
    asb.ey();
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
 * Qualified Name:     com.google.android.gms.tagmanager.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */