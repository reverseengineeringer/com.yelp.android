package com.yelp.android.ui.activities.nearby;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

class y
  extends j<List<RichSearchSuggestion>>
{
  y(NearbyPageFragment paramNearbyPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<RichSearchSuggestion> paramList)
  {
    paramApiRequest = a;
    NearbyPageFragment.b(a);
    NearbyPageFragment.a(paramApiRequest, new ArrayList(s.b(paramList)));
    NearbyPageFragment.a(a, NearbyPageFragment.c(a));
  }
  
  public boolean a()
  {
    NearbyPageFragment.a(a, ErrorType.LOCATION_SERVICES_DISABLED);
    NearbyPageFragment.b(a).a(null, NearbyPageFragment.a(a, NearbyPageFragment.d(a)));
    a.j();
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    NearbyPageFragment.a(a, ErrorType.getTypeFromException(paramYelpException));
    NearbyPageFragment.b(a).a(null, NearbyPageFragment.a(a, NearbyPageFragment.d(a)));
    a.j();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */