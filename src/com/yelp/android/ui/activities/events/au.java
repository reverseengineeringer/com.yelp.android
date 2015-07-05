package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.util.ErrorType;
import java.util.List;

class au
  extends j<List<EventSection>>
{
  au(EventsFragment paramEventsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<EventSection> paramList)
  {
    EventsFragment.a(a, true);
    EventsFragment.a(a, null);
    a.j();
    EventsFragment.a(a, paramList);
  }
  
  public boolean a()
  {
    EventsFragment.a(a, true);
    EventsFragment.a(a, new YelpException(YelpException.YPErrorLocationServicesDisabled));
    EventsFragment.a(a, ErrorType.LOCATION_SERVICES_DISABLED);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EventsFragment.a(a, true);
    EventsFragment.a(a, paramYelpException);
    EventsFragment.a(a, ErrorType.getTypeFromException(EventsFragment.c(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */