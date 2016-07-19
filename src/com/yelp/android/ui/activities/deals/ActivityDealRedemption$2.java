package com.yelp.android.ui.activities.deals;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;

class ActivityDealRedemption$2
  implements DialogInterface.OnClickListener
{
  ActivityDealRedemption$2(ActivityDealRedemption paramActivityDealRedemption) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().k().a(EventIri.DealRedeemCancelled, ActivityDealRedemption.a(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealRedemption.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */