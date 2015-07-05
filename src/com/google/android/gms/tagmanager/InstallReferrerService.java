package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

public final class InstallReferrerService
  extends IntentService
{
  CampaignTrackingService arF;
  Context arG;
  
  public InstallReferrerService()
  {
    super("InstallReferrerService");
  }
  
  public InstallReferrerService(String paramString)
  {
    super(paramString);
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    if (arF == null) {
      arF = new CampaignTrackingService();
    }
    arF.processIntent(paramContext, paramIntent);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if (arG != null) {}
    for (Context localContext = arG;; localContext = getApplicationContext())
    {
      ay.d(localContext, str);
      a(localContext, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.InstallReferrerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */