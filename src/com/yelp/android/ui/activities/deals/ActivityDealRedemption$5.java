package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;

class ActivityDealRedemption$5
  implements View.OnClickListener
{
  ActivityDealRedemption$5(ActivityDealRedemption paramActivityDealRedemption) {}
  
  public void onClick(View paramView)
  {
    AppData.b().k().a(EventIri.DealRedeem, ActivityDealRedemption.a(a));
    a.showDialog(300);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealRedemption.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */