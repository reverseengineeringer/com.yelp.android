package com.yelp.android.ui.activities.deals;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.YelpDeal;
import java.util.ArrayList;

class r
  extends BroadcastReceiver
{
  r(ActivityMyDeals paramActivityMyDeals) {}
  
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
    ((YelpDeal)ActivityMyDeals.c(a).get(i)).updatePurchase(paramIntent);
    ActivityMyDeals.b(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */