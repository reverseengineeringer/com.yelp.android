package com.yelp.android.ui.activities.search;

import android.util.Log;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;

class u
  extends j<Void>
{
  u(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid) {}
  
  public boolean a()
  {
    a.onProvidersRequired(SearchBusinessesByMap.b(a), true, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    Log.e("ActivityBusinessListResultsMap", "Error searching for businesses:\n" + paramYelpException.getMessage(), paramYelpException);
    SearchBusinessesByMap.a(a, (SearchRequest)paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */