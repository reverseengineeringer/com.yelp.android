package com.yelp.android.ui.activities.nearby;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.Event;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

class aa
  extends j<List<Event>>
{
  aa(NearbyPageFragment paramNearbyPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<Event> paramList)
  {
    NearbyPageFragment.c(a, new ArrayList(paramList));
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
 * Qualified Name:     com.yelp.android.ui.activities.nearby.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */