package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.EventRsvp;

class z
  implements m<EventRsvp>
{
  z(EventRequestFragment paramEventRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, EventRsvp paramEventRsvp)
  {
    EventRequestFragment.a(a, paramEventRsvp, EventRequestFragment.RequestType.EVENT_RECORD_RSVP);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EventRequestFragment.a(a, paramYelpException, EventRequestFragment.RequestType.EVENT_RECORD_RSVP);
    EventRequestFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */