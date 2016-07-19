package com.yelp.android.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import java.util.EnumSet;

public class OfferChangeListener
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.yelp.android.offer_redeemed".equals(paramIntent.getAction()))
    {
      paramContext = paramIntent.getStringExtra("business_id");
      paramIntent = (Offer)paramIntent.getParcelableExtra("offer");
      if ((paramIntent == null) || (EnumSet.of(Offer.OfferState.USED, Offer.OfferState.REMOVED).contains(paramIntent))) {
        AppData.b().i().d().a(paramContext);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.OfferChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */