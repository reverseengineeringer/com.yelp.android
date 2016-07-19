package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.serializable.ContinueLastOrderInfo;

class SearchBusinessesByList$11
  implements ApiRequest.b<ContinueLastOrderInfo>
{
  SearchBusinessesByList$11(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ContinueLastOrderInfo paramContinueLastOrderInfo)
  {
    d.a((aw)paramApiRequest, paramContinueLastOrderInfo, a.a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */