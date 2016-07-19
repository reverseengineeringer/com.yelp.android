package com.yelp.android.ui.activities.deals;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Offer;
import java.util.ArrayList;
import java.util.Iterator;

class ActivityMyDeals$3
  extends BroadcastReceiver
{
  ActivityMyDeals$3(ActivityMyDeals paramActivityMyDeals) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Offer)paramIntent.getParcelableExtra("offer");
    if (paramContext == null) {}
    Offer localOffer;
    do
    {
      return;
      while (!paramIntent.hasNext()) {
        paramIntent = ActivityMyDeals.a(a).iterator();
      }
      localOffer = (Offer)paramIntent.next();
    } while (localOffer.i().compareTo(paramContext.i()) != 0);
    ActivityMyDeals.a(a).remove(localOffer);
    ActivityMyDeals.a(a).add(paramContext);
    ActivityMyDeals.b(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */