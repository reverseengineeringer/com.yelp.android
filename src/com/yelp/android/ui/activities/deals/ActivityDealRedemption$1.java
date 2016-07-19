package com.yelp.android.ui.activities.deals;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.az;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.serializable.DealPurchase;

class ActivityDealRedemption$1
  implements DialogInterface.OnClickListener
{
  ActivityDealRedemption$1(ActivityDealRedemption paramActivityDealRedemption) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().k().a(EventIri.DealRedeemConfirmed, ActivityDealRedemption.a(a));
    a.b = new az(ActivityDealRedemption.b(a).l(), a);
    a.b.f(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealRedemption.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */