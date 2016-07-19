package com.yelp.android.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adjust.sdk.AdjustReferrerReceiver;
import com.google.android.gms.analytics.CampaignTrackingReceiver;

public class InstallBroadcastReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())) {
      return;
    }
    new AdjustReferrerReceiver().onReceive(paramContext, paramIntent);
    new CampaignTrackingReceiver().onReceive(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.InstallBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */