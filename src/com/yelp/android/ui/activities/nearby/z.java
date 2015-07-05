package com.yelp.android.ui.activities.nearby;

import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.av.a;
import com.yelp.android.av.g;
import com.yelp.android.serializable.NearbyRow;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

class z
  extends j<List<NearbyRow>>
{
  z(NearbyPageFragment paramNearbyPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<NearbyRow> paramList)
  {
    paramApiRequest = new h().a(EventIri.NearbyShownSuggestions).a(((g)paramApiRequest).getRequestId());
    AppData.b().k().a(paramApiRequest.a());
    NearbyPageFragment.b(a, new ArrayList(paramList));
    NearbyPageFragment.a(a, paramList);
  }
  
  public boolean a()
  {
    NearbyPageFragment.a(a, ErrorType.LOCATION_SERVICES_DISABLED);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    NearbyPageFragment.a(a, ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */