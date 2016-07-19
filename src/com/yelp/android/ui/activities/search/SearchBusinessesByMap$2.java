package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.serializable.ContinueLastOrderInfo;

class SearchBusinessesByMap$2
  implements ApiRequest.b<ContinueLastOrderInfo>
{
  SearchBusinessesByMap$2(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ContinueLastOrderInfo paramContinueLastOrderInfo)
  {
    d.a((aw)paramApiRequest, paramContinueLastOrderInfo, a.a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */