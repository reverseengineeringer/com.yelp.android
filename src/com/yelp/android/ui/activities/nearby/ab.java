package com.yelp.android.ui.activities.nearby;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class ab
  extends j<ArrayList<YelpCheckIn>>
{
  ab(NearbyPageFragment paramNearbyPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<YelpCheckIn> paramArrayList)
  {
    NearbyPageFragment.d(a, paramArrayList);
    NearbyPageFragment.a(a, paramArrayList);
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
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */