package com.yelp.android.ui.activities.deals;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.bi;
import com.yelp.android.av.a;
import com.yelp.android.serializable.DealPurchase;

class j
  implements DialogInterface.OnClickListener
{
  j(ActivityDealRedemption paramActivityDealRedemption) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().k().a(EventIri.DealRedeemConfirmed, ActivityDealRedemption.a(a));
    a.b = new bi(ActivityDealRedemption.b(a).getId(), a);
    a.b.execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */