package com.yelp.android.ui.activities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import java.util.ArrayList;

class ActivityMyOffers$1
  extends BroadcastReceiver
{
  ActivityMyOffers$1(ActivityMyOffers paramActivityMyOffers) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Offer)paramIntent.getParcelableExtra("offer");
    if ((paramContext == null) || (paramContext.l() == Offer.OfferState.USED))
    {
      if (paramContext != null) {
        a.a(paramContext.i());
      }
      if (ActivityMyOffers.a(a).size() == 0) {
        a.finish();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMyOffers.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */