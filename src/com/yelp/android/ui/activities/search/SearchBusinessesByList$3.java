package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.h;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.ui.util.as;

class SearchBusinessesByList$3
  implements ApiRequest.b<YelpBookmark>
{
  SearchBusinessesByList$3(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBookmark paramYelpBookmark)
  {
    if (SearchBusinessesByList.d(a) != null) {
      SearchBusinessesByList.d(a).dismiss();
    }
    paramApiRequest = ((h)paramApiRequest).b();
    paramApiRequest.a(true);
    SearchBusinessesByList.b(a, paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (SearchBusinessesByList.d(a) != null) {
      SearchBusinessesByList.d(a).dismiss();
    }
    as.a(2131165848, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */