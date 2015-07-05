package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Event;

class v
  implements m<Event>
{
  v(EventRequestFragment paramEventRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Event paramEvent)
  {
    EventRequestFragment.a(a, paramEvent, EventRequestFragment.RequestType.EVENT_REQUEST);
    EventRequestFragment.a(a, null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EventRequestFragment.a(a, paramYelpException, EventRequestFragment.RequestType.EVENT_REQUEST);
    EventRequestFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */