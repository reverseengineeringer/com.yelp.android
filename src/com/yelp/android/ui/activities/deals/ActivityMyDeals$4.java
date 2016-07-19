package com.yelp.android.ui.activities.deals;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.YelpDeal;
import java.util.ArrayList;

class ActivityMyDeals$4
  extends BroadcastReceiver
{
  ActivityMyDeals$4(ActivityMyDeals paramActivityMyDeals) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpDeal)paramIntent.getParcelableExtra("extra.yelp_deal");
    paramIntent = (DealPurchase)paramIntent.getParcelableExtra("extra.deal_purchased");
    if (ActivityMyDeals.c(a) == null) {
      ActivityMyDeals.a(a, new ArrayList());
    }
    if ((paramContext == null) || (paramIntent == null)) {
      ActivityMyDeals.c(a).clear();
    }
    int i;
    do
    {
      return;
      i = ActivityMyDeals.c(a).indexOf(paramContext);
    } while (i == 0);
    ((YelpDeal)ActivityMyDeals.c(a).get(i)).a(paramIntent);
    ActivityMyDeals.b(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */