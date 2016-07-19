package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.BasicBroadcastReceiver;
import java.util.Iterator;
import java.util.List;

class SearchBusinessesByList$8
  extends BasicBroadcastReceiver
{
  SearchBusinessesByList$8(SearchBusinessesByList paramSearchBusinessesByList, IntentFilter... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("business_id");
    paramIntent = (Offer)paramIntent.getParcelableExtra("offer");
    if (((paramIntent == null) || (paramIntent.l() == Offer.OfferState.USED)) && (paramContext != null) && (a.a.k() != null))
    {
      Iterator localIterator = a.a.k().b().iterator();
      while (localIterator.hasNext())
      {
        YelpBusiness localYelpBusiness = ((BusinessSearchResult)localIterator.next()).a();
        if (localYelpBusiness.aD().equals(paramContext)) {
          localYelpBusiness.a(paramIntent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */