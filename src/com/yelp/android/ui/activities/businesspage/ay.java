package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.OfferChangeListener;
import java.util.ArrayList;
import java.util.Iterator;

class ay
  extends OfferChangeListener
{
  ay(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    paramContext = (Offer)paramIntent.getParcelableExtra("offer");
    if (paramIntent.getStringExtra("business_id").equals(BusinessPageFragment.c(a).getId()))
    {
      if ((paramContext.getState().equals(Offer.OfferState.REMOVED)) || (paramContext.getState().equals(Offer.OfferState.USED)))
      {
        BusinessPageFragment.c(a).setCheckInOffer(null);
        a.a(BusinessPageFragment.c(a));
      }
    }
    else {
      return;
    }
    BusinessPageFragment.c(a).setCheckInOffer(paramContext);
    if (BusinessPageFragment.b(a) != null)
    {
      paramContext = BusinessPageFragment.b(a).iterator();
      while (paramContext.hasNext())
      {
        paramIntent = (Intent)paramContext.next();
        if (paramIntent.hasExtra("offer")) {
          BusinessPageFragment.b(a).remove(paramIntent);
        }
      }
    }
    a.a(BusinessPageFragment.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */