package com.yelp.android.ui.activities.search;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.YelpLog;

class SearchBusinessesByList$6
  extends k.b<Void>
{
  SearchBusinessesByList$6(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    YelpLog.d("Debug", "onSuccess from mLocationRequestCallback getting called");
  }
  
  public boolean a()
  {
    a.onProvidersRequired(a, true, 0);
    a.populateError(ErrorType.NO_LOCATION);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = AppData.b().r();
    if (k.b(a, PermissionGroup.LOCATION)) {
      d.a(a);
    }
    if ((paramApiRequest.a()) && (!paramApiRequest.b()) && (paramYelpException.getMessageResource() == 2131165389)) {
      a.onProvidersRequired(null, false, 2131166224);
    }
    if ((!a.p().b()) && (SearchBusinessesByList.a(a).isEmpty())) {
      a.populateError(paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */