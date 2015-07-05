package com.yelp.android.ui.activities.mutatebiz;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Location;
import com.yelp.android.ui.util.f;
import com.yelp.android.ui.util.g;

class ac
  implements m<Location>
{
  ac(MoveBusinessPlacementFragment.GeocodeRequestFragment paramGeocodeRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Location paramLocation)
  {
    if (MoveBusinessPlacementFragment.GeocodeRequestFragment.c(a) == null)
    {
      MoveBusinessPlacementFragment.GeocodeRequestFragment.a(a, new f(paramLocation, null));
      return;
    }
    MoveBusinessPlacementFragment.GeocodeRequestFragment.c(a).a(paramLocation);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (MoveBusinessPlacementFragment.GeocodeRequestFragment.c(a) == null)
    {
      MoveBusinessPlacementFragment.GeocodeRequestFragment.a(a, new f(null, paramYelpException));
      return;
    }
    MoveBusinessPlacementFragment.GeocodeRequestFragment.c(a).b(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */