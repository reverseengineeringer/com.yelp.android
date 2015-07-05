package com.yelp.android.appdata;

import android.location.Location;
import com.adjust.sdk.e;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.a;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.PromotedFilter;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class aq
  extends com.yelp.android.appdata.webrequests.j<SearchRequest.SearchResponse>
{
  aq(ap paramap) {}
  
  public void a(Location paramLocation)
  {
    super.a(paramLocation);
    if (ap.a(a) != null) {
      ap.a(a).a(paramLocation);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    boolean bool2 = true;
    ap.a(a, paramSearchResponse);
    a locala = AppData.b().k();
    e.a("1jqz5y");
    HashMap localHashMap = new HashMap();
    localHashMap.put("term", ((SearchRequest)paramApiRequest).getSearchTerms());
    if (ap.c(a) != null) {
      ap.c(a).addParameter(localHashMap);
    }
    if (ap.d(a) != null)
    {
      localHashMap.put("button", ap.d(a));
      ap.a(a, null);
    }
    if (paramSearchResponse.getPromotedFilter() != null)
    {
      localHashMap.put("promoted_filter_alias", paramSearchResponse.getPromotedFilter().getAlias());
      localHashMap.put("toggle_on", Boolean.valueOf(paramSearchResponse.getPromotedFilter().isOn()));
    }
    paramSearchResponse = paramSearchResponse.getBusinessSearchResults();
    if (paramSearchResponse != null)
    {
      paramSearchResponse = paramSearchResponse.iterator();
      BusinessSearchResult localBusinessSearchResult;
      do
      {
        if (!paramSearchResponse.hasNext()) {
          break;
        }
        localBusinessSearchResult = (BusinessSearchResult)paramSearchResponse.next();
      } while ((localBusinessSearchResult == null) || (localBusinessSearchResult.getSearchActions().isEmpty()));
    }
    for (boolean bool1 = true;; bool1 = false)
    {
      localHashMap.put("search_actions_shown", Boolean.valueOf(bool1));
      locala.a(new g(EventIri.Search, ap.e(a).getRequestId(), localHashMap));
      ap.a(a, ap.e(a).getOffset());
      paramSearchResponse = a;
      if (ap.e(a).getBusinessSearchResults().size() + ap.f(a) >= ap.e(a).getTotal()) {}
      for (bool1 = bool2;; bool1 = false)
      {
        ap.a(paramSearchResponse, bool1);
        ap.a(a, ap.b(a).copy());
        a.notifyChanged();
        com.yelp.android.analytics.j.a(KahunaEventIri.Search);
        paramApiRequest = ((SearchRequest)paramApiRequest).getCategory();
        if (paramApiRequest != null) {
          com.yelp.android.analytics.j.a(KahunaAttributeIri.LastSearchCategory, paramApiRequest.toString());
        }
        return;
      }
    }
  }
  
  public boolean a()
  {
    YelpLog.i(this, "No Providers enabled");
    return ap.a(a).a();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ap.a(a).onError(paramApiRequest, paramYelpException);
    a.notifyInvalidated();
    ap.a(a, ap.b(a).copy());
    YelpLog.e(this, "Error occured with search request", paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */