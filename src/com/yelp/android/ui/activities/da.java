package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import java.util.ArrayList;

class da
  extends BroadcastReceiver
{
  da(ActivityMyOffers paramActivityMyOffers) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Offer)paramIntent.getParcelableExtra("offer");
    if ((paramContext == null) || (paramContext.getState() == Offer.OfferState.USED))
    {
      a.a(paramContext.getId());
      if (ActivityMyOffers.a(a).size() == 0) {
        a.finish();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */