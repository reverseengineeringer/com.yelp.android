package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.EventAttendees;

class w
  implements m<EventAttendees>
{
  w(EventRequestFragment paramEventRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, EventAttendees paramEventAttendees)
  {
    if (EventRequestFragment.a(a) == null) {
      EventRequestFragment.a(a, new ae(paramEventAttendees, null, EventRequestFragment.RequestType.EVENT_ATTENDEES_REQUEST));
    }
    for (;;)
    {
      EventRequestFragment.a(a, null);
      return;
      EventRequestFragment.a(a).a(paramEventAttendees, EventRequestFragment.RequestType.EVENT_ATTENDEES_REQUEST);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (EventRequestFragment.a(a) == null) {
      EventRequestFragment.a(a, new ae(null, paramYelpException, EventRequestFragment.RequestType.EVENT_ATTENDEES_REQUEST));
    }
    for (;;)
    {
      EventRequestFragment.a(a, null);
      return;
      EventRequestFragment.a(a).a(paramYelpException, EventRequestFragment.RequestType.EVENT_ATTENDEES_REQUEST);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */