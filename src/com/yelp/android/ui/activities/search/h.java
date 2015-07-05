package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ui.panels.businesssearch.g;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.YelpLog;

class h
  extends j<Void>
{
  h(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    YelpLog.d("Debug", "onSucces from mLocationRequestCallback getting called");
  }
  
  public boolean a()
  {
    a.onProvidersRequired(a, true, 0);
    a.populateError(ErrorType.NO_LOCATION);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = AppData.b().n();
    if ((paramApiRequest.a()) && (!paramApiRequest.b()) && (paramYelpException.getMessageResource() == 2131165253)) {
      a.onProvidersRequired(null, false, 2131166175);
    }
    if ((!a.o().c()) && (SearchBusinessesByList.a(a).isEmpty())) {
      a.populateError(paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */