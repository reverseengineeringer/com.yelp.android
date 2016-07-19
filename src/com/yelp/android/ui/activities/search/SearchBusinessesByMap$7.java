package com.yelp.android.ui.activities.search;

import android.util.Log;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;

class SearchBusinessesByMap$7
  extends k.b<Void>
{
  SearchBusinessesByMap$7(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid) {}
  
  public boolean a()
  {
    a.onProvidersRequired(SearchBusinessesByMap.d(a), true, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    Log.e("ActivityBusinessListResultsMap", "Error searching for businesses:\n" + paramYelpException.getMessage(), paramYelpException);
    SearchBusinessesByMap.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */