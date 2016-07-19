package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.ui.util.as;

class SearchBusinessesByList$2
  implements c.a
{
  SearchBusinessesByList$2(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if (SearchBusinessesByList.d(a) != null) {
      SearchBusinessesByList.d(a).dismiss();
    }
    paramApiRequest = ((dk)paramApiRequest).b();
    paramApiRequest.a(false);
    SearchBusinessesByList.b(a, paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (SearchBusinessesByList.d(a) != null) {
      SearchBusinessesByList.d(a).dismiss();
    }
    as.a(2131165849, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */