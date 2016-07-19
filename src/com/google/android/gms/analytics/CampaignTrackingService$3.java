package com.google.android.gms.analytics;

import com.google.android.gms.analytics.internal.g;

class CampaignTrackingService$3
  implements Runnable
{
  CampaignTrackingService$3(CampaignTrackingService paramCampaignTrackingService, int paramInt, g paramg) {}
  
  public void run()
  {
    boolean bool = c.stopSelfResult(a);
    if (bool) {
      b.a("Install campaign broadcast processed", Boolean.valueOf(bool));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */