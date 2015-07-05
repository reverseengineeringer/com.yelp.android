package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.BasicBroadcastReceiver;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

class i
  extends BasicBroadcastReceiver
{
  i(SearchBusinessesByList paramSearchBusinessesByList, Collection paramCollection)
  {
    super(paramCollection);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("business_id");
    paramIntent = (Offer)paramIntent.getParcelableExtra("offer");
    if (((paramIntent == null) || (paramIntent.getState() == Offer.OfferState.USED)) && (paramContext != null) && (a.a.l() != null))
    {
      Iterator localIterator = a.a.l().getBusinessSearchResults().iterator();
      while (localIterator.hasNext())
      {
        YelpBusiness localYelpBusiness = ((BusinessSearchResult)localIterator.next()).getBusiness();
        if (localYelpBusiness.getId().equals(paramContext)) {
          localYelpBusiness.setCheckInOffer(paramIntent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */