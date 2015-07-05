package com.yelp.android.ui.activities.search;

import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.map.f;
import java.util.Iterator;
import java.util.List;

class y
  implements f<YelpBusiness>
{
  y(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    Object localObject = SearchBusinessesByMap.g(a).iterator();
    while (((Iterator)localObject).hasNext())
    {
      LocalAd localLocalAd = (LocalAd)((Iterator)localObject).next();
      if (localLocalAd.getBusiness().equals(paramYelpBusiness)) {
        AppData.a(EventIri.AdSearchMapClick, localLocalAd.getIriParams(false));
      }
    }
    if (a.a == null) {}
    for (localObject = null;; localObject = a.a.p())
    {
      a.startActivityForResult(ActivityBusinessPage.a(a, paramYelpBusiness, (SearchRequest)localObject), 1005);
      return;
    }
  }
  
  public void b(YelpBusiness paramYelpBusiness)
  {
    Iterator localIterator = SearchBusinessesByMap.g(a).iterator();
    while (localIterator.hasNext())
    {
      LocalAd localLocalAd = (LocalAd)localIterator.next();
      if (localLocalAd.getBusiness().equals(paramYelpBusiness)) {
        AppData.a(AutoIri.AdSearchMapImpression, localLocalAd.getIriParams(false));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */