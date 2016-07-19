package com.yelp.android.ui.activities.search;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.map.e.a;
import java.util.Iterator;
import java.util.List;

class SearchBusinessesByMap$10
  implements e.a<BusinessSearchResult>
{
  SearchBusinessesByMap$10(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(BusinessSearchResult paramBusinessSearchResult)
  {
    a.a(paramBusinessSearchResult);
  }
  
  public void b(BusinessSearchResult paramBusinessSearchResult)
  {
    Iterator localIterator = SearchBusinessesByMap.h(a).iterator();
    while (localIterator.hasNext())
    {
      SearchResultLocalAd localSearchResultLocalAd = (SearchResultLocalAd)localIterator.next();
      YelpBusiness localYelpBusiness = paramBusinessSearchResult.a();
      if (localSearchResultLocalAd.a().equals(localYelpBusiness))
      {
        AppData.a(EventIri.AdSearchMapImpression, localSearchResultLocalAd.a(false));
        TrackOfflineAttributionRequest.a(localYelpBusiness, TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */